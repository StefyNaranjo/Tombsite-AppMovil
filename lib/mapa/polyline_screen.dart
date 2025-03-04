import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:tombsite_prot1/backend/schema/familiares_record.dart';
import '/components/barra_widget.dart';
import 'mapa_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class PolylineScreen extends StatefulWidget {
  const PolylineScreen({super.key, required this.nombre});
  final DocumentReference? nombre;

  @override
  State<PolylineScreen> createState() => _PolylineScreenState();
}

class _PolylineScreenState extends State<PolylineScreen> {
  final locationController = Location();

  LatLng? currentPosition; // Ubicación actual del dispositivo
  LatLng? destinationPosition; // Ubicación del destino
  Set<Polyline> polylines = {}; // Conjunto de polilíneas

  @override
  void initState() {
    super.initState();
    fetchLocationUpdates(); // Inicia la escucha de cambios en la ubicación
  }

  Future<void> fetchLocationUpdates() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await locationController.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await locationController.requestService();
    }

    permissionGranted = await locationController.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await locationController.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    // Escuchar cambios en la ubicación
    locationController.onLocationChanged.listen((currentLocation) {
      if (currentLocation.latitude != null && currentLocation.longitude != null) {
        setState(() {
          currentPosition = LatLng(
            currentLocation.latitude!,
            currentLocation.longitude!,
          );
        });
        print('Current position: $currentPosition'); // Agrega este print
        generatePolyLineFromPoints(); // Llama al método para generar la polilínea
      }
    });
  }

  Future<void> generatePolyLineFromPoints() async {
    if (currentPosition != null && destinationPosition != null) {
      final polyline = Polyline(
        polylineId: const PolylineId('polyline'),
        color: Colors.blueAccent,
        points: [currentPosition!, destinationPosition!],
        width: 5,
      );
      print('Polyline generated: $polyline'); // Agrega este print
      setState(() {
        polylines.add(polyline); // Agregar la polilínea al conjunto
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FamiliaresRecord>(
      stream: FamiliaresRecord.getDocument(widget!.nombre!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final polylineFamiliaresRecord = snapshot.data!;
        destinationPosition = LatLng(
          polylineFamiliaresRecord.coordenadas!.latitude ?? 0.0,
          polylineFamiliaresRecord.coordenadas!.longitude ?? 0.0,
        );

        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Ruta a la ubicacion de la tumba',
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Color.fromRGBO(123, 91, 242, 1.0),
          ),
          body: currentPosition == null || destinationPosition == null
              ? const Center(child: CircularProgressIndicator())
              : GoogleMap(
            initialCameraPosition: CameraPosition(
              target: currentPosition!,
              zoom: 19,
            ),
            markers: {
              Marker(
                markerId: const MarkerId('currentLocation'),
                icon: BitmapDescriptor.defaultMarker,
                position: currentPosition!,
              ),
              Marker(
                markerId: const MarkerId('destinationLocation'),
                icon: BitmapDescriptor.defaultMarker,
                position: destinationPosition!,
              ),
            },
            polylines: polylines,
          ),
        );
      },
    );
  }
}
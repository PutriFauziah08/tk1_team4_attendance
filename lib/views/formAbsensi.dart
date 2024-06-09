// import 'package:flutter/foundation.dart';
import 'package:attendance/models/absensi.dart';
import 'package:flutter/material.dart';

class FormAbsensi extends StatefulWidget {

  final Absensi? absensi;
  FormAbsensi({super.key, this.absensi});

  @override
  State<FormAbsensi> createState() => _FormAbsensiState(this.absensi);
}

class _FormAbsensiState extends State<FormAbsensi> {

  Absensi? absensi;
  _FormAbsensiState(this.absensi);

  TextEditingController nameController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    if(absensi !=null){
      nameController.text = absensi!.name;
      statusController.text = absensi!.status_hadir;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Entry Form Absensi'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            // nama
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),

            // status
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: statusController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Status',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),

            // tombol
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  // tombol simpan
                  Expanded(
                    child: ElevatedButton(
                      child: Text(
                        'Save',
                      ),
                      onPressed: () {
                        if (absensi == null) {
                          // tambah data
                          absensi = Absensi(nameController.text, statusController.text);
                        } else {
                          // ubah data
                          absensi!.name = nameController.text;
                          absensi!.status_hadir = statusController.text;
                        }

                        Navigator.pop(context, absensi);
                      }
                    )
                  ),
                  Container(width: 10.0,),
                  Expanded(
                    child: ElevatedButton(
                        child: Text("Back"),
                        onPressed: () {
                          Navigator.pop(context);
                        }
                      )
                  )
                ],
              ),
            ),

          ]
        ),
        )
    );
  }
}
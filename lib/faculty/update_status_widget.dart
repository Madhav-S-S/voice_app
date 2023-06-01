import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:voice/faculty/faculty_methods.dart';
import 'package:voice/utils/color_utils.dart';

updateStatusWidget(){
  var statusController = TextEditingController();
  return Dialog(
                    backgroundColor: Colors.transparent,
                   child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            //make the border circular
                            //make background blur of the container          
                            color: Colors.black54.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 500,
                          width: 300,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              //increase the size of the update status text
                              Text('Update Status', style: TextStyle(fontSize: 20,fontFamily: 'Poppins'),),
                              SizedBox(height: 20,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20,),
                                 child: TextField(
                                    controller: statusController,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                        //set the color of of the field as white
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(0.1),
                                        icon:Icon(Icons.update),
                                        hintText: "Update Status here",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide.none,
                                        )
                                    ),
                                    style: TextStyle(fontSize: 20),
                                  ),
                               ),
                                SizedBox(height: 10,),
                               //create a icon button to submit the status
                                Align(
                                  widthFactor: 3,
                                  alignment: Alignment.topRight,
                                  child: TextButton(
                                    //set background color of the button as voiceBlue
                                    style: TextButton.styleFrom(
                                      backgroundColor: voiceBlue,
                                    ),
                                    onPressed: (){
                                      
                                    },
                                    child: Text('SUBMIT',style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                               ListView(
                                 shrinkWrap: true,
                                 children: [
                                   ListTile(
                                     title: Text('Complaint ID:'),
                                     subtitle: Text('123456789'),
                                   ),
                                   ListTile(
                                     title: Text('Complaint Type:'),
                                     subtitle: Text('General'),
                                   ),
                                   ListTile(
                                     title: Text('Complaint Description:'),
                                     subtitle: Text('This is a general complaint'),
                                   ),
                                   ListTile(
                                     title: Text('Complaint Status:'),
                                     subtitle: Text('Open'),
                                   ),
                                 ],
                               ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:voice/utils/color_utils.dart';

updateStatusWidget(){
  return Dialog(
                    backgroundColor: Colors.transparent,
                   child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          //make the border circular
                          //make background blur of the container          
                          color: Colors.black54.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 300,
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
                                  controller: null,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                      //set the color of of the field as white
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(0.1),
                                      icon:Icon(Icons.update),
                                      hintText: "Update Status here",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                  ),
                                  style: TextStyle(fontSize: 20),
                                ),
                             ),
                             
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //style the buttons
                                ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(69, 158, 158, 158),
                            ),
                            onPressed: () {},
                            child: Text('Resolved ✔️'),
                            ),
                            ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(69, 158, 158, 158),
                            ),
                            onPressed: () {},
                            child: Text('Not Resolved ❌'),
                            ),
                            
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
}
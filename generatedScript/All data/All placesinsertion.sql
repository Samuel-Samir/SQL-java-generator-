/////////////////////////////////////////////////////////////////////////////////////////////////
// clinic
SET IDENTITY_INSERT clinic ON

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 1 , N'Ahmed Khalif' , N'أحمد خليف' , N'Orthopaedic Surgery' , N'جراحة العظام'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 2 , N'Samir Hussein Sharmy' , N'سمير حسين شرمي' , N'Orthopaedic Surgery' , N'جراحة العظام'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 3 , N'Hani Wael Mansour Fahmi' , N'هاني  وائل منصور فهمي' , N'Hand  Surgery' , N'جراحة يد'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 4 , N'Yasser Mahmoud Asim Hussain' , N'ياسر  عاصم  محمود  حسين' , N'Orthopaedic Surgery' , N'جراحة العظام'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 5 , N'Samia Mohammed Hassan' , N'سامية  محمد حسن فضة' , N'Rheumatism - natural medicine' , N'الروماتيزم - والطب الطبيعي'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 6 , N'Mohammad Hussain Ahmed Ibrahim Khalil' , N'محمد حسين  احمد ابرهيم خليل' , N'Orthopaedic Surgery' , N'جراحة العظام'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 7 , N'Mohamed Kamal Abdul Aziz' , N'محمد كمال عبد  العزيز' , N'Orthopaedic Surgery' , N'جراحة العظام'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 8 , N'Ahmed Charkaoui' , N'أحمد شرقاوي' , N'Ear Nose and Throat' , N'الانف والاذن والحنجرة'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 9 , N'Ahmed Abdel Aal Asalmaoa' , N'أحمد عبد  العال السلماوي' , N'Ear Nose and Throat' , N'الانف والاذن والحنجرة'  )

insert into clinic (clinicId ,clinicNameEN,clinicNameAR,clinicSpecializationEN,clinicSpecializationAR ) 
values ( 10 , N'Ashraf Baha Eldin Faik' , N'اشرف بهاء الدين فايق' , N'Ear Nose and Throat' , N'الانف والاذن والحنجرة'  )

SET IDENTITY_INSERT clinic OFF

/////////////////////////////////////////////////////////////////////////////////////////////////
// hospital 

SET IDENTITY_INSERT hospital ON
insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 1 , N'Dar El Oyoon' , N'دار العيون' , 0.0 , 1.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 2 , N'El Quds El Shareef' , N'القدس الشريف' , 0.0 , 0.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 3 , N'El Marwa' , N'المروة' , 1.0 , 1.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 4 , N'Ali Ibrahim' , N'علي ابراهيم' , 0.0 , 1.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 5 , N'Hawaa' , N'حواء' , 1.0 , 1.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 6 , N'El Zeraeen' , N'الزراعيين' , 1.0 , 0.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 7 , N'Misr El Dawly' , N'مصر الدولي' , 0.0 , 1.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 8 , N'Gaber ben Hayyan' , N'جابر بن حيان' , 1.0 , 0.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 9 , N'El Rowad' , N'الرواد' , 0.0 , 0.0  )

insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )
values ( 10 , N'El Fayroz' , N'الفيروز' , 1.0 , 1.0  )

SET IDENTITY_INSERT hospital OFF

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// lab

SET IDENTITY_INSERT lab ON
insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 1 , N'Dr. Ali Sayed' , N'د. علي سيد' , N'Pathology' , N'باثولوجي' , 0.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 2 , N'Cairo scan' , N'كايرو سكان' , N'Chemical' , N'كيميائي' , 19956.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 3 , N'El Burg' , N'البرج' , N'Pathology' , N'باثولوجي' , 19795.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 4 , N'El Mokhtabar' , N'المختبر' , N'Pathology' , N'باثولوجي' , 19513.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 5 , N'Dr. Yousri Abdo' , N'د. يسري عبده' , N'Pathology' , N'باثولوجي' , 0.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 6 , N'Dr. Maged Ahmed' , N'د. ماجد احمد' , N'Chemical' , N'كيميائي' , 0.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 7 , N'Badrawey Clinics' , N'عيادات البدراوي' , N'Pathology' , N'باثولوجي' , 0.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 8 , N'Dr. Lamiaa Bahgat' , N'د. لمياء بهجت' , N'Pathology' , N'باثولوجي' , 0.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 9 , N'Alpha' , N'الفا' , N'Chemical' , N'كيميائي' , 19162.0  )

insert into lab ( labId , labNameEN ,labNameAR , labSpecializationEN ,labSpecializationAR ,labHotLine ) 
values ( 10 , N'Mega Scan' , N'ميجا سكان' , N'Pathology' , N'باثولوجي' , 19592.0  )

SET IDENTITY_INSERT lab OFF

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////  pharmacy

SET IDENTITY_INSERT pharmacy ON
insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 1 , N'El Amal' , N'الامل' , 0.0 , 0.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 2 , N'El Ezaby' , N'العزبي' , 1.0 , 19956.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 3 , N'Dr. Akrum Shawky' , N'د. اكرم شوقي' , 0.0 , 0.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 4 , N'Dr. Amr Kandeel' , N'د. عمرو  قنديل' , 0.0 , 0.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 5 , N'Dr. Ahmed Adel' , N'د. احمد عادل' , 0.0 , 0.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 6 , N'Dway' , N'دوائي' , 1.0 , 16692.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 7 , N'Roshdy' , N'رشدي' , 1.0 , 19263.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 8 , N'Dr. Hoda' , N'د. هدي' , 0.0 , 0.0  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 9 , N'Dr. Khaled Reda' , N'د. خالد رضا' , 1.0 , 3.7620525E7  )

insert into pharmacy (pharmacyId , pharmacyNameEN ,pharmacyNameAR ,pharmacyDelivery ,pharmacyHotLine) 
values ( 10 , N'Shefa' , N'شفا' , 0.0 , 0.0  )

SET IDENTITY_INSERT pharmacy OFF

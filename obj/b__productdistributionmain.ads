pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Community 2019 (20190517-83)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_productdistributionmain" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#648c47aa#;
   pragma Export (C, u00001, "productdistributionmainB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#0f7d71d4#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#d90c4a0d#;
   pragma Export (C, u00005, "ada__exceptionsB");
   u00006 : constant Version_32 := 16#16307b94#;
   pragma Export (C, u00006, "ada__exceptionsS");
   u00007 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00007, "ada__exceptions__last_chance_handlerB");
   u00008 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerS");
   u00009 : constant Version_32 := 16#085b6ffb#;
   pragma Export (C, u00009, "systemS");
   u00010 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00010, "system__soft_linksB");
   u00011 : constant Version_32 := 16#4d58644d#;
   pragma Export (C, u00011, "system__soft_linksS");
   u00012 : constant Version_32 := 16#bd45c2cc#;
   pragma Export (C, u00012, "system__secondary_stackB");
   u00013 : constant Version_32 := 16#4dcf97e2#;
   pragma Export (C, u00013, "system__secondary_stackS");
   u00014 : constant Version_32 := 16#86dbf443#;
   pragma Export (C, u00014, "system__parametersB");
   u00015 : constant Version_32 := 16#40b73bd0#;
   pragma Export (C, u00015, "system__parametersS");
   u00016 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00016, "system__storage_elementsB");
   u00017 : constant Version_32 := 16#259825ff#;
   pragma Export (C, u00017, "system__storage_elementsS");
   u00018 : constant Version_32 := 16#75bf515c#;
   pragma Export (C, u00018, "system__soft_links__initializeB");
   u00019 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00019, "system__soft_links__initializeS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#86e40413#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00022, "system__exception_tableB");
   u00023 : constant Version_32 := 16#55f506b9#;
   pragma Export (C, u00023, "system__exception_tableS");
   u00024 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00024, "system__exceptionsB");
   u00025 : constant Version_32 := 16#6038020d#;
   pragma Export (C, u00025, "system__exceptionsS");
   u00026 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00026, "system__exceptions__machineB");
   u00027 : constant Version_32 := 16#d27d9682#;
   pragma Export (C, u00027, "system__exceptions__machineS");
   u00028 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#76d1963f#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#0a808f39#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#5679b13f#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00034, "system__traceback_entriesB");
   u00035 : constant Version_32 := 16#0800998b#;
   pragma Export (C, u00035, "system__traceback_entriesS");
   u00036 : constant Version_32 := 16#bb296fbb#;
   pragma Export (C, u00036, "system__traceback__symbolicB");
   u00037 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00037, "system__traceback__symbolicS");
   u00038 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00038, "ada__exceptions__tracebackB");
   u00039 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00039, "ada__exceptions__tracebackS");
   u00040 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00040, "system__address_imageB");
   u00041 : constant Version_32 := 16#a9b7f2c1#;
   pragma Export (C, u00041, "system__address_imageS");
   u00042 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00042, "system__wch_conB");
   u00043 : constant Version_32 := 16#13264d29#;
   pragma Export (C, u00043, "system__wch_conS");
   u00044 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00044, "system__wch_stwB");
   u00045 : constant Version_32 := 16#3e376128#;
   pragma Export (C, u00045, "system__wch_stwS");
   u00046 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00046, "system__wch_cnvB");
   u00047 : constant Version_32 := 16#1c91f7da#;
   pragma Export (C, u00047, "system__wch_cnvS");
   u00048 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00048, "interfacesS");
   u00049 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00049, "system__wch_jisB");
   u00050 : constant Version_32 := 16#9ce1eefb#;
   pragma Export (C, u00050, "system__wch_jisS");
   u00051 : constant Version_32 := 16#d398a95f#;
   pragma Export (C, u00051, "ada__tagsB");
   u00052 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00052, "ada__tagsS");
   u00053 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00053, "system__htableB");
   u00054 : constant Version_32 := 16#8c99dc11#;
   pragma Export (C, u00054, "system__htableS");
   u00055 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00055, "system__string_hashB");
   u00056 : constant Version_32 := 16#2ec7b76f#;
   pragma Export (C, u00056, "system__string_hashS");
   u00057 : constant Version_32 := 16#3cdd1378#;
   pragma Export (C, u00057, "system__unsigned_typesS");
   u00058 : constant Version_32 := 16#b8e72903#;
   pragma Export (C, u00058, "system__val_lluB");
   u00059 : constant Version_32 := 16#51139e9a#;
   pragma Export (C, u00059, "system__val_lluS");
   u00060 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00060, "system__val_utilB");
   u00061 : constant Version_32 := 16#a4fbd905#;
   pragma Export (C, u00061, "system__val_utilS");
   u00062 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00062, "system__case_utilB");
   u00063 : constant Version_32 := 16#378ed9af#;
   pragma Export (C, u00063, "system__case_utilS");
   u00064 : constant Version_32 := 16#f4e097a7#;
   pragma Export (C, u00064, "ada__text_ioB");
   u00065 : constant Version_32 := 16#3913d0d6#;
   pragma Export (C, u00065, "ada__text_ioS");
   u00066 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00066, "ada__streamsB");
   u00067 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00067, "ada__streamsS");
   u00068 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00068, "ada__io_exceptionsS");
   u00069 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00069, "interfaces__c_streamsB");
   u00070 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00070, "interfaces__c_streamsS");
   u00071 : constant Version_32 := 16#4e0ce0a1#;
   pragma Export (C, u00071, "system__crtlS");
   u00072 : constant Version_32 := 16#ec083f01#;
   pragma Export (C, u00072, "system__file_ioB");
   u00073 : constant Version_32 := 16#af2a8e9e#;
   pragma Export (C, u00073, "system__file_ioS");
   u00074 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00074, "ada__finalizationS");
   u00075 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00075, "system__finalization_rootB");
   u00076 : constant Version_32 := 16#47a91c6b#;
   pragma Export (C, u00076, "system__finalization_rootS");
   u00077 : constant Version_32 := 16#e4774a28#;
   pragma Export (C, u00077, "system__os_libB");
   u00078 : constant Version_32 := 16#d8e681fb#;
   pragma Export (C, u00078, "system__os_libS");
   u00079 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00079, "system__stringsB");
   u00080 : constant Version_32 := 16#684d436e#;
   pragma Export (C, u00080, "system__stringsS");
   u00081 : constant Version_32 := 16#f5c4f553#;
   pragma Export (C, u00081, "system__file_control_blockS");
   u00082 : constant Version_32 := 16#fdedfd10#;
   pragma Export (C, u00082, "ada__text_io__integer_auxB");
   u00083 : constant Version_32 := 16#2fe01d89#;
   pragma Export (C, u00083, "ada__text_io__integer_auxS");
   u00084 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00084, "ada__text_io__generic_auxB");
   u00085 : constant Version_32 := 16#305a076a#;
   pragma Export (C, u00085, "ada__text_io__generic_auxS");
   u00086 : constant Version_32 := 16#b10ba0c7#;
   pragma Export (C, u00086, "system__img_biuB");
   u00087 : constant Version_32 := 16#faff9b35#;
   pragma Export (C, u00087, "system__img_biuS");
   u00088 : constant Version_32 := 16#4e06ab0c#;
   pragma Export (C, u00088, "system__img_llbB");
   u00089 : constant Version_32 := 16#bb388bcb#;
   pragma Export (C, u00089, "system__img_llbS");
   u00090 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00090, "system__img_lliB");
   u00091 : constant Version_32 := 16#19143a2a#;
   pragma Export (C, u00091, "system__img_lliS");
   u00092 : constant Version_32 := 16#a756d097#;
   pragma Export (C, u00092, "system__img_llwB");
   u00093 : constant Version_32 := 16#1254a85d#;
   pragma Export (C, u00093, "system__img_llwS");
   u00094 : constant Version_32 := 16#eb55dfbb#;
   pragma Export (C, u00094, "system__img_wiuB");
   u00095 : constant Version_32 := 16#94be1ca7#;
   pragma Export (C, u00095, "system__img_wiuS");
   u00096 : constant Version_32 := 16#0f9783a4#;
   pragma Export (C, u00096, "system__val_intB");
   u00097 : constant Version_32 := 16#bda40698#;
   pragma Export (C, u00097, "system__val_intS");
   u00098 : constant Version_32 := 16#383fd226#;
   pragma Export (C, u00098, "system__val_unsB");
   u00099 : constant Version_32 := 16#09db6ec1#;
   pragma Export (C, u00099, "system__val_unsS");
   u00100 : constant Version_32 := 16#fb020d94#;
   pragma Export (C, u00100, "system__val_lliB");
   u00101 : constant Version_32 := 16#6435fd0b#;
   pragma Export (C, u00101, "system__val_lliS");
   u00102 : constant Version_32 := 16#375e0291#;
   pragma Export (C, u00102, "distribution_serviceB");
   u00103 : constant Version_32 := 16#02d41a64#;
   pragma Export (C, u00103, "distribution_serviceS");
   u00104 : constant Version_32 := 16#357666d8#;
   pragma Export (C, u00104, "ada__calendar__delaysB");
   u00105 : constant Version_32 := 16#d86d2f1d#;
   pragma Export (C, u00105, "ada__calendar__delaysS");
   u00106 : constant Version_32 := 16#fc54e290#;
   pragma Export (C, u00106, "ada__calendarB");
   u00107 : constant Version_32 := 16#31350a81#;
   pragma Export (C, u00107, "ada__calendarS");
   u00108 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00108, "interfaces__cB");
   u00109 : constant Version_32 := 16#467817d8#;
   pragma Export (C, u00109, "interfaces__cS");
   u00110 : constant Version_32 := 16#2b2125d3#;
   pragma Export (C, u00110, "system__os_primitivesB");
   u00111 : constant Version_32 := 16#0fa60a0d#;
   pragma Export (C, u00111, "system__os_primitivesS");
   u00112 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00112, "ada__float_text_ioB");
   u00113 : constant Version_32 := 16#39060f6c#;
   pragma Export (C, u00113, "ada__float_text_ioS");
   u00114 : constant Version_32 := 16#25afee5b#;
   pragma Export (C, u00114, "ada__text_io__float_auxB");
   u00115 : constant Version_32 := 16#6ecdea4c#;
   pragma Export (C, u00115, "ada__text_io__float_auxS");
   u00116 : constant Version_32 := 16#8aa4f090#;
   pragma Export (C, u00116, "system__img_realB");
   u00117 : constant Version_32 := 16#cff33e19#;
   pragma Export (C, u00117, "system__img_realS");
   u00118 : constant Version_32 := 16#0cccd408#;
   pragma Export (C, u00118, "system__fat_llfS");
   u00119 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00119, "system__float_controlB");
   u00120 : constant Version_32 := 16#e8a72cc7#;
   pragma Export (C, u00120, "system__float_controlS");
   u00121 : constant Version_32 := 16#3e932977#;
   pragma Export (C, u00121, "system__img_lluB");
   u00122 : constant Version_32 := 16#751413bb#;
   pragma Export (C, u00122, "system__img_lluS");
   u00123 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00123, "system__img_unsB");
   u00124 : constant Version_32 := 16#a3292f8f#;
   pragma Export (C, u00124, "system__img_unsS");
   u00125 : constant Version_32 := 16#582b098c#;
   pragma Export (C, u00125, "system__powten_tableS");
   u00126 : constant Version_32 := 16#c5134340#;
   pragma Export (C, u00126, "system__val_realB");
   u00127 : constant Version_32 := 16#0624832e#;
   pragma Export (C, u00127, "system__val_realS");
   u00128 : constant Version_32 := 16#b2a569d2#;
   pragma Export (C, u00128, "system__exn_llfB");
   u00129 : constant Version_32 := 16#b425d427#;
   pragma Export (C, u00129, "system__exn_llfS");
   u00130 : constant Version_32 := 16#502e73ef#;
   pragma Export (C, u00130, "system__fat_fltS");
   u00131 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00131, "ada__integer_text_ioB");
   u00132 : constant Version_32 := 16#2ec7c168#;
   pragma Export (C, u00132, "ada__integer_text_ioS");
   u00133 : constant Version_32 := 16#cd2959fb#;
   pragma Export (C, u00133, "ada__numericsS");
   u00134 : constant Version_32 := 16#d976e2b4#;
   pragma Export (C, u00134, "ada__numerics__float_randomB");
   u00135 : constant Version_32 := 16#62aa8dd2#;
   pragma Export (C, u00135, "ada__numerics__float_randomS");
   u00136 : constant Version_32 := 16#ec9cfed1#;
   pragma Export (C, u00136, "system__random_numbersB");
   u00137 : constant Version_32 := 16#cb43df61#;
   pragma Export (C, u00137, "system__random_numbersS");
   u00138 : constant Version_32 := 16#15692802#;
   pragma Export (C, u00138, "system__random_seedB");
   u00139 : constant Version_32 := 16#534b46a0#;
   pragma Export (C, u00139, "system__random_seedS");
   u00140 : constant Version_32 := 16#bf13658b#;
   pragma Export (C, u00140, "food_datastructuresB");
   u00141 : constant Version_32 := 16#62898d43#;
   pragma Export (C, u00141, "food_datastructuresS");
   u00142 : constant Version_32 := 16#f08789ae#;
   pragma Export (C, u00142, "ada__text_io__enumeration_auxB");
   u00143 : constant Version_32 := 16#c468c016#;
   pragma Export (C, u00143, "ada__text_io__enumeration_auxS");
   u00144 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00144, "ada__charactersS");
   u00145 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00145, "ada__characters__handlingB");
   u00146 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00146, "ada__characters__handlingS");
   u00147 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00147, "ada__characters__latin_1S");
   u00148 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00148, "ada__stringsS");
   u00149 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00149, "ada__strings__mapsB");
   u00150 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00150, "ada__strings__mapsS");
   u00151 : constant Version_32 := 16#98e13b0e#;
   pragma Export (C, u00151, "system__bit_opsB");
   u00152 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00152, "system__bit_opsS");
   u00153 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00153, "ada__strings__maps__constantsS");
   u00154 : constant Version_32 := 16#273384e4#;
   pragma Export (C, u00154, "system__img_enum_newB");
   u00155 : constant Version_32 := 16#6917693b#;
   pragma Export (C, u00155, "system__img_enum_newS");
   u00156 : constant Version_32 := 16#655cb48e#;
   pragma Export (C, u00156, "system__val_enumB");
   u00157 : constant Version_32 := 16#6a5a8400#;
   pragma Export (C, u00157, "system__val_enumS");
   u00158 : constant Version_32 := 16#e128440b#;
   pragma Export (C, u00158, "gatekeeperserviceB");
   u00159 : constant Version_32 := 16#98a6f79e#;
   pragma Export (C, u00159, "gatekeeperserviceS");
   u00160 : constant Version_32 := 16#71e4fac1#;
   pragma Export (C, u00160, "circularqueB");
   u00161 : constant Version_32 := 16#26249373#;
   pragma Export (C, u00161, "circularqueS");
   u00162 : constant Version_32 := 16#276453b7#;
   pragma Export (C, u00162, "system__img_lldB");
   u00163 : constant Version_32 := 16#fb796692#;
   pragma Export (C, u00163, "system__img_lldS");
   u00164 : constant Version_32 := 16#bd3715ff#;
   pragma Export (C, u00164, "system__img_decB");
   u00165 : constant Version_32 := 16#a6766620#;
   pragma Export (C, u00165, "system__img_decS");
   u00166 : constant Version_32 := 16#2281c1c8#;
   pragma Export (C, u00166, "system__taskingB");
   u00167 : constant Version_32 := 16#34147ee0#;
   pragma Export (C, u00167, "system__taskingS");
   u00168 : constant Version_32 := 16#fde20231#;
   pragma Export (C, u00168, "system__task_primitivesS");
   u00169 : constant Version_32 := 16#352452d1#;
   pragma Export (C, u00169, "system__os_interfaceB");
   u00170 : constant Version_32 := 16#b9c37c0a#;
   pragma Export (C, u00170, "system__os_interfaceS");
   u00171 : constant Version_32 := 16#64ad9f76#;
   pragma Export (C, u00171, "interfaces__c__extensionsS");
   u00172 : constant Version_32 := 16#b870d14d#;
   pragma Export (C, u00172, "system__os_constantsS");
   u00173 : constant Version_32 := 16#7a0a06a1#;
   pragma Export (C, u00173, "system__task_primitives__operationsB");
   u00174 : constant Version_32 := 16#1951cab5#;
   pragma Export (C, u00174, "system__task_primitives__operationsS");
   u00175 : constant Version_32 := 16#89b55e64#;
   pragma Export (C, u00175, "system__interrupt_managementB");
   u00176 : constant Version_32 := 16#1a73cd21#;
   pragma Export (C, u00176, "system__interrupt_managementS");
   u00177 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00177, "system__multiprocessorsB");
   u00178 : constant Version_32 := 16#30f7f088#;
   pragma Export (C, u00178, "system__multiprocessorsS");
   u00179 : constant Version_32 := 16#e0fce7f8#;
   pragma Export (C, u00179, "system__task_infoB");
   u00180 : constant Version_32 := 16#8841d2fa#;
   pragma Export (C, u00180, "system__task_infoS");
   u00181 : constant Version_32 := 16#1036f432#;
   pragma Export (C, u00181, "system__tasking__debugB");
   u00182 : constant Version_32 := 16#de1ac8b1#;
   pragma Export (C, u00182, "system__tasking__debugS");
   u00183 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00183, "system__concat_2B");
   u00184 : constant Version_32 := 16#0afbb82b#;
   pragma Export (C, u00184, "system__concat_2S");
   u00185 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00185, "system__concat_3B");
   u00186 : constant Version_32 := 16#032b335e#;
   pragma Export (C, u00186, "system__concat_3S");
   u00187 : constant Version_32 := 16#6ec3c867#;
   pragma Export (C, u00187, "system__stack_usageB");
   u00188 : constant Version_32 := 16#3a3ac346#;
   pragma Export (C, u00188, "system__stack_usageS");
   u00189 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00189, "system__ioB");
   u00190 : constant Version_32 := 16#961998b4#;
   pragma Export (C, u00190, "system__ioS");
   u00191 : constant Version_32 := 16#7382e823#;
   pragma Export (C, u00191, "system__tasking__rendezvousB");
   u00192 : constant Version_32 := 16#5618a4d0#;
   pragma Export (C, u00192, "system__tasking__rendezvousS");
   u00193 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00193, "system__restrictionsB");
   u00194 : constant Version_32 := 16#4329b6aa#;
   pragma Export (C, u00194, "system__restrictionsS");
   u00195 : constant Version_32 := 16#891dbac0#;
   pragma Export (C, u00195, "system__tasking__entry_callsB");
   u00196 : constant Version_32 := 16#6342024e#;
   pragma Export (C, u00196, "system__tasking__entry_callsS");
   u00197 : constant Version_32 := 16#0a1cacd7#;
   pragma Export (C, u00197, "system__tasking__initializationB");
   u00198 : constant Version_32 := 16#fc2303e6#;
   pragma Export (C, u00198, "system__tasking__initializationS");
   u00199 : constant Version_32 := 16#3b415298#;
   pragma Export (C, u00199, "system__soft_links__taskingB");
   u00200 : constant Version_32 := 16#e939497e#;
   pragma Export (C, u00200, "system__soft_links__taskingS");
   u00201 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00201, "ada__exceptions__is_null_occurrenceB");
   u00202 : constant Version_32 := 16#e1d7566f#;
   pragma Export (C, u00202, "ada__exceptions__is_null_occurrenceS");
   u00203 : constant Version_32 := 16#6213e14a#;
   pragma Export (C, u00203, "system__tasking__task_attributesB");
   u00204 : constant Version_32 := 16#e81a3c25#;
   pragma Export (C, u00204, "system__tasking__task_attributesS");
   u00205 : constant Version_32 := 16#9fcf5d7f#;
   pragma Export (C, u00205, "system__tasking__protected_objectsB");
   u00206 : constant Version_32 := 16#15001baf#;
   pragma Export (C, u00206, "system__tasking__protected_objectsS");
   u00207 : constant Version_32 := 16#92cd7102#;
   pragma Export (C, u00207, "system__tasking__protected_objects__entriesB");
   u00208 : constant Version_32 := 16#7daf93e7#;
   pragma Export (C, u00208, "system__tasking__protected_objects__entriesS");
   u00209 : constant Version_32 := 16#6368532a#;
   pragma Export (C, u00209, "system__tasking__protected_objects__operationsB");
   u00210 : constant Version_32 := 16#ba36ad85#;
   pragma Export (C, u00210, "system__tasking__protected_objects__operationsS");
   u00211 : constant Version_32 := 16#2e4883f4#;
   pragma Export (C, u00211, "system__tasking__queuingB");
   u00212 : constant Version_32 := 16#6dba2805#;
   pragma Export (C, u00212, "system__tasking__queuingS");
   u00213 : constant Version_32 := 16#0b29e756#;
   pragma Export (C, u00213, "system__tasking__utilitiesB");
   u00214 : constant Version_32 := 16#0f670827#;
   pragma Export (C, u00214, "system__tasking__utilitiesS");
   u00215 : constant Version_32 := 16#69297ce2#;
   pragma Export (C, u00215, "system__tasking__stagesB");
   u00216 : constant Version_32 := 16#bfc55b2f#;
   pragma Export (C, u00216, "system__tasking__stagesS");
   u00217 : constant Version_32 := 16#09924dd9#;
   pragma Export (C, u00217, "ada__real_timeB");
   u00218 : constant Version_32 := 16#69ea8064#;
   pragma Export (C, u00218, "ada__real_timeS");
   u00219 : constant Version_32 := 16#392e42e8#;
   pragma Export (C, u00219, "stats_fooddistributionB");
   u00220 : constant Version_32 := 16#1f4d3167#;
   pragma Export (C, u00220, "stats_fooddistributionS");
   u00221 : constant Version_32 := 16#6a1b1491#;
   pragma Export (C, u00221, "food_salesserviceB");
   u00222 : constant Version_32 := 16#0918658f#;
   pragma Export (C, u00222, "food_salesserviceS");
   u00223 : constant Version_32 := 16#e31b7c4e#;
   pragma Export (C, u00223, "system__memoryB");
   u00224 : constant Version_32 := 16#512609cf#;
   pragma Export (C, u00224, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_dec%s
   --  system.img_dec%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.img_lld%s
   --  system.img_lld%b
   --  system.io%s
   --  system.io%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.memory%s
   --  system.memory%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.strings%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  interfaces.c.extensions%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_real%s
   --  system.img_real%b
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.os_constants%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.tasking%b
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_enum%s
   --  system.val_enum%b
   --  system.val_llu%s
   --  system.val_llu%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.val_lli%s
   --  system.val_lli%b
   --  system.val_real%s
   --  system.val_real%b
   --  system.val_uns%s
   --  system.val_uns%b
   --  system.val_int%s
   --  system.val_int%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%s
   --  ada.text_io.float_aux%b
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%s
   --  ada.characters.handling%b
   --  ada.text_io.enumeration_aux%s
   --  ada.text_io.enumeration_aux%b
   --  system.random_seed%s
   --  system.random_seed%b
   --  system.random_numbers%s
   --  system.random_numbers%b
   --  ada.numerics.float_random%s
   --  ada.numerics.float_random%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.initialization%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%s
   --  system.tasking.utilities%b
   --  system.tasking.entry_calls%s
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.entry_calls%b
   --  system.tasking.rendezvous%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  circularque%s
   --  circularque%b
   --  food_datastructures%s
   --  food_datastructures%b
   --  stats_fooddistribution%s
   --  stats_fooddistribution%b
   --  gatekeeperservice%s
   --  gatekeeperservice%b
   --  distribution_service%s
   --  distribution_service%b
   --  food_salesservice%s
   --  food_salesservice%b
   --  productdistributionmain%b
   --  END ELABORATION ORDER

end ada_main;

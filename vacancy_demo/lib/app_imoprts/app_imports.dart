import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:image_network/image_network.dart';
import 'package:vacancy_demo/model/job_model.dart';
import 'package:vacancy_demo/module/bloc/jobs_bloc.dart';
import 'package:vacancy_demo/utils/constant/app_strings.dart';
import 'package:vacancy_demo/utils/constant/enum.dart';
import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart';

//!-----------------------------------------------------------------------------
part '../module/ui/vacancy_details_screen.dart';
part '../module/ui/vacancy_screen.dart';
part '../material_app.dart';
part '../main.dart';
part '../module/data/api.dart';
part '../module/data/repository.dart';
part '../utils/theme/custom_theme.dart';
part '../widgets/custom_text_view.dart';
part '../widgets/custom_button.dart';
part '../utils/theme/text_style.dart';
part '../utils/theme/app_colors.dart';
part '../widgets/loader.dart';

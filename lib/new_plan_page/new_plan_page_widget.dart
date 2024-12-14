import '/backend/backend.dart';
import '/components/no_type_selected_sheet_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'new_plan_page_model.dart';
export 'new_plan_page_model.dart';

class NewPlanPageWidget extends StatefulWidget {
  const NewPlanPageWidget({super.key});

  @override
  State<NewPlanPageWidget> createState() => _NewPlanPageWidgetState();
}

class _NewPlanPageWidgetState extends State<NewPlanPageWidget> {
  late NewPlanPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPlanPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('MorningRoutine');
                        },
                        child: Text(
                          'Let\'s create your Skin Plan',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Text(
                            'Select from the options below to the best of your ability',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterFlowDropDown<String>(
                        controller: _model.dropDownSkinTypeValueController ??=
                            FormFieldController<String>(null),
                        options: const [
                          'Oily Skin',
                          'Dry Skin',
                          'Combination Skin',
                          'Sensitive Skin',
                          'Normal Skin'
                        ],
                        onChanged: (val) => safeSetState(
                            () => _model.dropDownSkinTypeValue = val),
                        width: 300.0,
                        height: 70.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  fontSize: 19.0,
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Select your skin type',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: FlutterFlowTheme.of(context).secondary,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderWidth: 0.0,
                        borderRadius: 24.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterFlowDropDown<String>(
                        controller: _model.dropDownAcneTypeValueController ??=
                            FormFieldController<String>(null),
                        options: const [
                          'Cystic Acne',
                          'Hormonal Acne',
                          'Whiteheads',
                          'Blackheads',
                          'Papules',
                          'Pustules',
                          'Nodular Acne',
                          'Fungal Acne',
                          'Acne Scars',
                          'Comedonal Acne'
                        ],
                        onChanged: (val) => safeSetState(
                            () => _model.dropDownAcneTypeValue = val),
                        width: 300.0,
                        height: 70.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  fontSize: 19.0,
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Select your acne type',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: FlutterFlowTheme.of(context).secondary,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderWidth: 0.0,
                        borderRadius: 24.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: SizedBox(
                          width: 320.0,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Your concerns',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 3,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        if ((_model.dropDownSkinTypeValue != null &&
                                _model.dropDownSkinTypeValue != '') &&
                            (_model.dropDownAcneTypeValue != null &&
                                _model.dropDownAcneTypeValue != '')) {
                          _model.key = await queryChaChingRecordOnce(
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          _model.routineNumber =
                              await actions.invokeChatGPTRoutineSelection(
                            _model.key!.key,
                            _model.dropDownSkinTypeValue!,
                            _model.dropDownAcneTypeValue!,
                            'Based on the following skin type and acne type, select one of the routines below and only return the number associated with it.   Example: “3”   Routine 1 Morning Routine: Cleanse with salicylic acid-based face wash. Apply a toner with witch hazel to control oil. Use an oil-free moisturizer with niacinamide. Apply benzoyl peroxide on active cysts. Finish with SPF 50 mattifying sunscreen. Night Routine: Double cleanse with oil cleanser followed by a water-based gel cleanser. Apply an exfoliating toner with BHA. Use a retinol cream for acne prevention. Spot treatment with sulfur or benzoyl peroxide. Moisturize with a lightweight gel.  Routine 2 Morning Routine: Use a hydrating cream cleanser with ceramides. Apply a hydrating essence with hyaluronic acid. Layer a light hydrating serum with peptides. Spot treat hormonal areas with salicylic acid. Use a rich moisturizer and SPF 30. Night Routine: Cleanse with a gentle, non-foaming cream cleanser. Use a niacinamide serum to calm inflammation. Apply a rich retinol alternative, like bakuchiol. Spot treat with benzoyl peroxide. Moisturize with a barrier repair cream containing ceramides.  Routine 3 Morning Routine: Cleanse with a fragrance-free, gentle gel cleanser. Use a soothing toner with aloe vera. Apply a calming serum with centella asiatica. Spot treat whiteheads with a low-dose salicylic acid. Use a sunscreen with zinc oxide and titanium dioxide (mineral-based). Night Routine: Cleanse with a hydrating milk cleanser. Apply a serum with azelaic acid to reduce redness. Use a fragrance-free moisturizer with ceramides. Spot treat with tea tree oil for whiteheads. Apply a calming night mask with colloidal oatmeal.  Routine 4 Morning Routine: Cleanse with a glycolic acid-based cleanser. Apply a pore-tightening toner with witch hazel. Use a niacinamide serum to balance oil production. Apply a lightweight, non-comedogenic moisturizer. Use a broad-spectrum SPF 30 sunscreen. Night Routine: Double cleanse with an oil-based cleanser followed by a gel cleanser. Use a BHA exfoliating toner to clear blackheads. Apply a retinol serum to prevent clogged pores. Moisturize with a lightweight gel cream. Use a charcoal or clay mask once a week for deep cleansing.  Routine 5 Morning Routine: Cleanse with a benzoyl peroxide face wash. Use a calming toner with green tea extract. Apply a vitamin C serum to brighten skin. Spot treat with salicylic acid. Finish with an oil-free SPF 50 sunscreen. Night Routine: Cleanse with a gentle, pH-balanced cleanser. Use a serum with niacinamide to calm inflammation. Apply a treatment cream with azelaic acid. Spot treat papules with benzoyl peroxide. Moisturize with a non-comedogenic cream.  Routine 6 Morning Routine: Cleanse with a gentle foaming cleanser. Apply a hydrating toner with rose water. Use a serum with hyaluronic acid. Spot treat with a salicylic acid gel. Apply a lightweight SPF 30 moisturizer. Night Routine: Cleanse with a gentle exfoliating cleanser. Apply a serum with alpha hydroxy acids (AHA). Spot treat with benzoyl peroxide on breakouts. Use a lightweight moisturizer with ceramides. Apply a hydrating overnight mask once a week.  Routine 7 Morning Routine: Cleanse with a cream-based cleanser containing glycolic acid. Apply a hydrating toner with rosehip oil. Use a vitamin C serum for anti-aging. Spot treat acne with tea tree oil. Moisturize with an anti-aging SPF 30. Night Routine: Cleanse with a gentle foaming cleanser. Use a retinol serum to target acne and aging. Apply a niacinamide serum to reduce fine lines and redness. Spot treat acne with salicylic acid. Moisturize with a rich night cream containing peptides.  Routine 8 Morning Routine: Cleanse with a hydrating micellar water. Apply a toner with hyaluronic acid and glycerin. Use a brightening serum with vitamin C and licorice root. Spot treat with azelaic acid. Moisturize with a hydrating cream and SPF 50. Night Routine: Cleanse with a gentle, hydrating foam cleanser. Apply a serum with niacinamide to reduce acne scars. Use a treatment cream with AHA to exfoliate dead skin. Spot treat acne scars with vitamin C serum. Apply a thick overnight hydrating mask.',
                          );
                          FFAppState().RoutineNumber = _model.routineNumber!;
                          safeSetState(() {});

                          context.pushNamed('AcnePlanHome');

                          FFAppState().HasMadefirstAcnePlan = true;
                          safeSetState(() {});
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: const SizedBox(
                                    height: 200.0,
                                    child: NoTypeSelectedSheetWidget(),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        }

                        safeSetState(() {});
                      },
                      text: 'Generate Plan',
                      options: FFButtonOptions(
                        width: 275.0,
                        height: 46.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFECD24B),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
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
}

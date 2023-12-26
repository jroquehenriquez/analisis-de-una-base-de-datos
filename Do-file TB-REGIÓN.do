***SESIÓN 1***
**IMPORTAR LA "Base de datos TB-REGION 13dic2023"**
**CAMBIAR VALORES DE VARIABLES STRING A NÚMEROS - CREAR VARIABLES**
gen Edad1 = Edad
label variable Edad1 "Edad del paciente"

gen Edad2 = Edad_años
label variable Edad2 "fecha de diagnóstico - fecha de nacimiento"

*Para efectos de cálculo se tomará en cuenta la variable Edad1*
sum Edad1
gen Edad_cat = .
replace Edad_cat = 0 if Edad1 >= 2 & Edad1 <= 14
replace Edad_cat = 1 if Edad1 >= 15 & Edad1 <= 44
replace Edad_cat = 2 if Edad1 >= 45 & Edad1 <= 92
label define edad_cat 0 "<=14" 1 "15 a 44" 2 ">=45"
label values Edad_cat edad_cat
label variable Edad_cat "Edad categorizada"

codebook Genero
gen Genero2 = .
replace Genero2 = 0 if Genero == "F"
replace Genero2 = 1 if Genero == "M"
label define genero2 0 "Femenino" 1 "Masculino"
label values Genero2 genero2
label variable Genero2 "Género del paciente"

codebook Departamentoprocedencia
tab Departamentoprocedencia, m
gen Depar_proce2 = .
replace Depar_proce2 = 0 if Departamentoprocedencia == "AMAZONAS"
replace Depar_proce2 = 1 if Departamentoprocedencia == "ANCASH"
replace Depar_proce2 = 2 if Departamentoprocedencia == "APURIMAC"
replace Depar_proce2 = 3 if Departamentoprocedencia == "CAJAMARCA"
replace Depar_proce2 = 4 if Departamentoprocedencia == "JUNIN"
replace Depar_proce2 = 5 if Departamentoprocedencia == "LA LIBERTAD"
replace Depar_proce2 = 6 if Departamentoprocedencia == "LAMBAYEQUE"
replace Depar_proce2 = 7 if Departamentoprocedencia == "LIMA"
replace Depar_proce2 = 8 if Departamentoprocedencia == "SAN MARTIN"
replace Depar_proce2 = 9 if Departamentoprocedencia == "TUMBES"
label define depar_proce2 0 "Amazonas" 1 "Ancash" 2 "Apurímac" 3 "Cajamarca" 4 "Junín" 5 "La Libertad" 6 "Lambayeque" 7 "Lima" 8 "San Martín" 9 "Tumbes"
label values Depar_proce2 depar_proce2
label variable Depar_proce2 "Departamento de procedencia"

tab Provinciaprocedencia, m
gen Prov_proce2 = .
replace Prov_proce2 = 0 if Provinciaprocedencia == "ANDAHUAYLAS"
replace Prov_proce2 = 1 if Provinciaprocedencia == "BAGUA"
replace Prov_proce2 = 2 if Provinciaprocedencia == "CAJABAMBA"
replace Prov_proce2 = 3 if Provinciaprocedencia == "CELENDIN"
replace Prov_proce2 = 4 if Provinciaprocedencia == "CHACHAPOYAS"
replace Prov_proce2 = 5 if Provinciaprocedencia == "CHICLAYO"
replace Prov_proce2 = 6 if Provinciaprocedencia == "CHOTA"
replace Prov_proce2 = 7 if Provinciaprocedencia == "CONTUMAZA"
replace Prov_proce2 = 8 if Provinciaprocedencia == "CUTERVO"
replace Prov_proce2 = 9 if Provinciaprocedencia == "HUALGAYOC"
replace Prov_proce2 = 10 if Provinciaprocedencia == "HUALLAGA"
replace Prov_proce2 = 11 if Provinciaprocedencia == "HUARAZ"
replace Prov_proce2 = 12 if Provinciaprocedencia == "JAEN"
replace Prov_proce2 = 13 if Provinciaprocedencia == "LIMA"
replace Prov_proce2 = 14 if Provinciaprocedencia == "LUYA"
replace Prov_proce2 = 15 if Provinciaprocedencia == "MOYOBAMBA"
replace Prov_proce2 = 16 if Provinciaprocedencia == "RIOJA"
replace Prov_proce2 = 17 if Provinciaprocedencia == "SAN IGNACIO"
replace Prov_proce2 = 18 if Provinciaprocedencia == "SAN MARCOS"
replace Prov_proce2 = 19 if Provinciaprocedencia == "SAN MARTIN"
replace Prov_proce2 = 20 if Provinciaprocedencia == "SAN MIGUEL"
replace Prov_proce2 = 21 if Provinciaprocedencia == "SAN PABLO"
replace Prov_proce2 = 22 if Provinciaprocedencia == "SANTA CRUZ"
replace Prov_proce2 = 23 if Provinciaprocedencia == "SATIPO"
replace Prov_proce2 = 24 if Provinciaprocedencia == "TRUJILLO"
replace Prov_proce2 = 25 if Provinciaprocedencia == "TUMBES"
label define prov_proce2 0 "Andahuaylas" 1 "Bagua" 2 "Cajabamba" 3 "Celendín" 4 "Chachapoyas" 5 "Chiclayo" 6 "Chota" 7 "Contumaza" 8 "Cutervo" 9 "Hualgayoc" 10 "Huallaga" 11 "Huaraz" 12 "Jaen" 13 "Lima" 14 "Luya" 15 "Moyobamba" 16 "Rioja" 17 "San Ignacio" 18 "San Marcos" 19 "San Martín" 20 "San Miguel" 21 "San Pablo" 22 "Santa Cruz" 23 "Satipo" 24 "Trujillo" 25 "Tumbes"
label values Prov_proce2 prov_proce2
label variable Prov_proce2 "Provincia de procedencia"

tab RedAtenc, m
gen Red_atenc2 = .
replace Red_atenc2 = 0 if RedAtenc == "BAMBAMARCA"
replace Red_atenc2 = 1 if RedAtenc == "CAJABAMBA"
replace Red_atenc2 = 2 if RedAtenc == "CAJAMARCA"
replace Red_atenc2 = 3 if RedAtenc == "CELENDIN"
replace Red_atenc2 = 4 if RedAtenc == "CHOTA"
replace Red_atenc2 = 5 if RedAtenc == "CONTUMAZA"
replace Red_atenc2 = 6 if RedAtenc == "CUTERVO"
replace Red_atenc2 = 7 if RedAtenc == "JAEN"
replace Red_atenc2 = 8 if RedAtenc == "NO PERTENECE A NINGUNA RED"
replace Red_atenc2 = 9 if RedAtenc == "SAN IGNACIO"
replace Red_atenc2 = 10 if RedAtenc == "SAN MARCOS"
replace Red_atenc2 = 11 if RedAtenc == "SAN MIGUEL"
replace Red_atenc2 = 12 if RedAtenc == "SAN PABLO"
replace Red_atenc2 = 13 if RedAtenc == "SANTA CRUZ"
replace Red_atenc2 = 14 if RedAtenc == "SOCOTA"
label define red_atenc2 0 "Bambamarca" 1 "Cajabamba" 2 "Cajamarca" 3 "Celendín" 4 "Chota" 5 "Contumaza" 6 "Cutervo" 7 "Jaen" 8 "No pertenece a ninguna red" 9 "San Ignacio" 10 "San Marcos" 11 "San Miguel" 12 "San Pablo" 13 "Santa Cruz" 14 "Socota"
label values Red_atenc2 red_atenc2
label variable Red_atenc2 "Red de atención"

gen Red_atenc3 = Red_atenc2
recode Red_atenc3 (1=0) (3=0) (4=0) (5=0) (6=0) (10=0) (11=0) (12=0) (13=0) (14=0)
label define red_atenc3 0 "Otra" 2 "Cajamarca" 7 "Jaen" 8 "No pertenece a ninguna red" 9 "San Ignacio"
label values Red_atenc3 red_atenc3
label variable Red_atenc3 "Red de atención"

tab LocalizaciondelaTB, m
gen Local_TB2 = .
replace Local_TB2 = 0 if LocalizaciondelaTB == "Extrapulmonar"
replace Local_TB2 = 1 if LocalizaciondelaTB == "Pulmonar"
label define local_TB2 0 "Extrapulmonar" 1 "Pulmonar"
label values Local_TB2 local_TB2
label variable Local_TB2 "Localización de la TB"

tab Condiciondeingreso, m
gen Cond_ingres2 = .
replace Cond_ingres2 = 0 if Condiciondeingreso == "Abandono recuperado"
replace Cond_ingres2 = 1 if Condiciondeingreso == "Fracaso"
replace Cond_ingres2 = 2 if Condiciondeingreso == "Nuevo"
replace Cond_ingres2 = 3 if Condiciondeingreso == "Recaida"
label define cond_ingres2 0 "Abandono recuperado" 1 "Fracaso" 2 "Nuevo" 3 "Recaída"
label values Cond_ingres2 cond_ingres2
label variable Cond_ingres2 "Condición de ingreso"

tab Esquemadetratamiento, m
gen Esq_tratam2 = .
replace Esq_tratam2 = 0 if Esquemadetratamiento == "2HREZ/10HR"
replace Esq_tratam2 = 1 if Esquemadetratamiento == "2HREZ/4(HR)3"
replace Esq_tratam2 = 2 if Esquemadetratamiento == "2HREZ/7HR"
label define esq_tratam2 0 "2HREZ/10HR" 1 "2HREZ/4(HR)3" 2 "2HREZ/7HR"
label values Esq_tratam2 esq_tratam2
label variable Esq_tratam2 "Esquema de tratamiento"

tab RecibeTPC, m
gen Reci_TPC2 = .
replace Reci_TPC2 = 0 if RecibeTPC == "Sí recibe"
replace Reci_TPC2 = 1 if RecibeTPC == "No recibe"
label define reci_TPC2 0 "Sí recibe" 1 "No recibe"
label values Reci_TPC2 reci_TPC2
label variable Reci_TPC2 "¿Recibe TPC?"

tab RecibeTARGA, m
gen Reci_TARGA2 = .
replace Reci_TARGA2 = 0 if RecibeTARGA == "Si recibe"
replace Reci_TARGA2 = 1 if RecibeTARGA == "No"
replace Reci_TARGA2 = 1 if RecibeTARGA == "No recibe"
label define reci_TARGA2 0 "Sí recibe" 1 "No recibe"
label values Reci_TARGA2 reci_TARGA2
label variable Reci_TARGA2 "Recibe TARGA"

tab cancer, m
gen Cancer2 = .
replace Cancer2 = 0 if cancer == "NO"
replace Cancer2 = 1 if cancer == "SI"
label define cancer2 0 "No" 1 "Sí"
label values Cancer2 cancer2
label variable Cancer2 "Cáncer"

tab Tipodesegurodesalud, m
gen Segur_salu2 = .
replace Segur_salu2 = 0 if Tipodesegurodesalud == "EsSalud"
replace Segur_salu2 = 1 if Tipodesegurodesalud == "No tiene seguro"
replace Segur_salu2 = 2 if Tipodesegurodesalud == "Otro seguro no listado"
replace Segur_salu2 = 3 if Tipodesegurodesalud == "Parcial"
replace Segur_salu2 = 4 if Tipodesegurodesalud == "SIS"
replace Segur_salu2 = 5 if Tipodesegurodesalud == "Seguro FFAA"
replace Segur_salu2 = 6 if Tipodesegurodesalud == "Seguro PNP"
replace Segur_salu2 = 7 if Tipodesegurodesalud == "Seguro privado"
label define segur_salu2 0 "EsSalud" 1 "No tiene seguro" 2 "Otro seguro no listado" 3 "Parcial" 4 "SIS" 5 "Seguro FFAA" 6 "Seguro PNP" 7 "Seguro privado"
label values Segur_salu2 segur_salu2
label variable Segur_salu2 "Tipo de seguro de salud"

gen Segur_salu3 = Segur_salu2
recode Segur_salu3 (3=2) (5=2) (6=2) (7=2)
label define segur_salu3 0 "EsSalud" 1 "No tiene seguro" 2 "Otro seguro" 4 "SIS"
label values Segur_salu3 segur_salu3
label variable Segur_salu3 "Tipo de seguro de salud"

tab Recibiócanasta, m
gen Reci_canast2 = .
replace Reci_canast2 = 0 if Recibiócanasta == "Si recibió"
replace Reci_canast2 = 1 if Recibiócanasta == "No recibió"
label define reci_canast2 0 "Sí recibió" 1 "No recibió"
label values Reci_canast2 reci_canast2
label variable Reci_canast2 "¿Recibió canasta?"

tab EspersonaldesaluddelEESS, m
gen Person_sal2 = .
replace Person_sal2 = 0 if EspersonaldesaluddelEESS == "No"
replace Person_sal2 = 1 if EspersonaldesaluddelEESS == "Sí"
label define person_sal2 0 "No" 1 "Sí"
label values Person_sal2 person_sal2
label variable Person_sal2 "¿Es personal de salud del EESS?"

tab Gestante, m
gen Gestante2 = .
replace Gestante2 = 0 if Gestante == "No"
replace Gestante2 = 1 if Gestante == "SI"
replace Gestante2 = 1 if Gestante == "Sí"
label define gestante2 0 "No" 1 "Sí"
label values Gestante2 gestante2
label variable Gestante2 "Gestante"

tab Alcoholismo, m
gen Alcoholismo2 = .
replace Alcoholismo2 = 0 if Alcoholismo == "No"
replace Alcoholismo2 = 1 if Alcoholismo == "SI"
replace Alcoholismo2 = 1 if Alcoholismo == "Si"
label define alcoholismo2 0 "No" 1 "Sí"
label values Alcoholismo2 alcoholismo2
label variable Alcoholismo2 "¿Alcoholismo?"

tab Tabaquismo, m
gen Tabaquismo2 = .
replace Tabaquismo2 = 0 if Tabaquismo == "No"
replace Tabaquismo2 = 1 if Tabaquismo == "Si"
label define tabaquismo2 0 "No" 1 "Sí"
label values Tabaquismo2 tabaquismo2
label variable Tabaquismo2 "¿Tabaquismo?"

tab Drogadicción, m
gen Drogadiccion2 = .
replace Drogadiccion2 = 0 if Drogadicción == "No"
replace Drogadiccion2 = 1 if Drogadicción == "Si"
label define drogadiccion2 0 "No" 1 "Sí"
label values Drogadiccion2 drogadiccion2
label variable Drogadiccion2 "¿Drogadicción?"

tab preso, m
gen Preso2 = .
replace Preso2 = 0 if preso == "NO"
replace Preso2 = 1 if preso == "SI"
label define preso2 0 "No" 1 "Sí"
label values Preso2 preso2
label variable Preso2 "Preso"

tab Condiciondeegreso, m
gen Cond_egres2 = .
replace Cond_egres2 = 0 if Condiciondeegreso == "Curado"
replace Cond_egres2 = 1 if Condiciondeegreso == "Tratamiento completo"
replace Cond_egres2 = 2 if Condiciondeegreso == "Abandono"
replace Cond_egres2 = 3 if Condiciondeegreso == "Fallecido"
replace Cond_egres2 = 4 if Condiciondeegreso == "Fracaso"
label define cond_egres2 0 "Curado" 1 "Tratamiento completo" 2 "Abandono" 3 "Fallecido" 4 "Fracaso"
label values Cond_egres2 cond_egres2
label variable Cond_egres2 "Condición de egreso"

tab EXCLUIDODEESQUEMAPARATBSENS, m
gen Excl_TB_sens2 = .
replace Excl_TB_sens2 = 0 if EXCLUIDODEESQUEMAPARATBSENS == "No"
replace Excl_TB_sens2 = 1 if EXCLUIDODEESQUEMAPARATBSENS == "Sí"
label define excl_TB_sens2 0 "No" 1 "Sí"
label values Excl_TB_sens2 excl_TB_sens2
label variable Excl_TB_sens2 "Excluido de esquema para TB sensible"

*Se toma como parámetro el "diagnóstico y antecedente" de DM*
tab1 DiagnosticodeDiabetesporprue TieneantecedenteeDMprevioa, m
gen DM2_2 = .
replace DM2_2 = 0 if DiagnosticodeDiabetesporprue == "No"
replace DM2_2 = 1 if DiagnosticodeDiabetesporprue == "Sí" || TieneantecedenteeDMprevioa == "Sí" || TieneantecedenteeDMprevioa == "SIS"
tab DM2_2, m
label define dm2_2 0 "No" 1 "Sí"
label values DM2_2 dm2_2
label variable DM2_2 "Con diagnóstico o antecedente de DM como resultado de la prueba de glicemia"

tab1 Irregularidad1raFase Irregularidad2dafase, m
gen Irregularidad2 = .
replace Irregularidad2 = 0 if Irregularidad1raFase == "No" & Irregularidad2dafase == "No"
replace Irregularidad2 = 1 if Irregularidad1raFase == "Sí" || Irregularidad2dafase == "Sí"
label define irregularidad2 0 "No" 1 "Sí"
label values Irregularidad2 irregularidad2
label variable Irregularidad2 "Irregularidad al tratamiento"

gen Re_tratTB2 = Cond_egres2
recode Re_tratTB2 (1=0) (3=2) (4=2)
label define re_tratTB2 0 "Éxito del tratamiento" 2 "No éxito del tratamiento"
label values Re_tratTB2 re_tratTB2
label variable Re_tratTB2 "Resultado del tratamiento de TB"

*Se toma como parámetro el resultado de la prueba de VIH*
tab1 ResultadodelapruebadeVIH TieneantecedentedeVIHprevio, m
gen VIH2 = .
replace VIH2 = 1 if ResultadodelapruebadeVIH == "Reactivo" || TieneantecedentedeVIHprevio == "Si"
replace VIH2 = 0 if ResultadodelapruebadeVIH == "No reactivo"
label define vih2 0 "No" 1 "Sí"
label values VIH2 vih2
label variable VIH2 "Con diagnóstico o antecedente de VIH"

*-------------------------------------------------------------------------------*
***SESIÓN 2***
**APLICACIÓN DE LOS CRITERIOS DE ELEGIBILIDAD**
tab Excl_TB_sens2, m
tab Excl_TB_sens2, m nolabel
drop if Excl_TB_sens2 == 1

tab Rifampicina
drop if Rifampicina == "Resistente"

tab Re_tratTB2, m
drop if Re_tratTB2 == .

**TABLA 1: TABLA DESCRIPTIVA**
*Características sociodemográficas*
tab Año, m
tab Genero2, m
swilk Edad1
tabstat Edad1, s(p25 p50 p75)
tab Edad_cat, m
tab Person_sal2, m
tab Person_sal2
tab Segur_salu3, m
tab Red_atenc3, m
tab1 Alcoholismo2 Tabaquismo2 Drogadiccion2, m
tab1 Alcoholismo2 Tabaquismo2 Drogadiccion2
*Características clínicas*
tab DM2_2, m
tab DM2_2
tab VIH2
tab Local_TB2, m
tab Cond_ingres2, m
tab Cond_ingres2
tab Esq_tratam2, m
tab Irregularidad2

*-------------------------------------------------------------------------------*
***SESIÓN 3***
**TABLA 2: RESULTADOS DEL TRATAMIENTO**
tab Cond_egres2 Año, col
tab Re_tratTB2 Año, expect
tab Re_tratTB2 Año, chi2

*-------------------------------------------------------------------------------*
***SESIÓN 4***
**TABLA 3: CARACTERÍSTICAS ASOCIADAS AL NO ÉXITO - ANÁLISIS BIVARIADO**
tab Genero2 Re_tratTB2, expect
tab Genero2 Re_tratTB2, chi2

bysort Re_tratTB2: sum Edad1, d
ranksum Edad1, by(Re_tratTB2)
tab Person_sal2 Re_tratTB2, expect
tab Person_sal2 Re_tratTB2, exact

tab Segur_salu3 Re_tratTB2, expect
tab Segur_salu3 Re_tratTB2, exact

tab Red_atenc3 Re_tratTB2, expect
tab Red_atenc3 Re_tratTB2, chi2

tab Alcoholismo2 Re_tratTB2, expect
tab Alcoholismo2 Re_tratTB2, chi2

tab Tabaquismo2 Re_tratTB2, expect
tab Tabaquismo2 Re_tratTB2, chi2

tab Drogadiccion2 Re_tratTB2, expect
tab Drogadiccion2 Re_tratTB2, chi2

tab DM2_2 Re_tratTB2, expect
tab DM2_2 Re_tratTB2, chi2

tab VIH2 Re_tratTB2, expect
tab VIH2 Re_tratTB2, chi2

tab Local_TB2 Re_tratTB2, expect
tab Local_TB2 Re_tratTB2, chi2

tab Cond_ingres2 Re_tratTB2, expect
tab Cond_ingres2 Re_tratTB2, exact

tab Esq_tratam2 Re_tratTB2, expect
tab Esq_tratam2 Re_tratTB2, chi2

tab Irregularidad2 Re_tratTB2, expect
tab Irregularidad2 Re_tratTB2, chi2

*-------------------------------------------------------------------------------*
***SESIÓN 5***
**TABLA 4: FACTORES ASOCIADOS AL NO ÉXITO - ENFOQUES EPIDEMIOLÓGICOS**
glm Re_tratTB2 i.Genero2, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 Edad1, fam(poisson) link(log) vce(robust) nolog eform
codebook Red_atenc3
glm Re_tratTB2 ib2.Red_atenc3, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 i.Alcoholismo2, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 i.Tabaquismo2 , fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 i.Drogadiccion2, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 i.DM2_2, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 i.VIH2, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 i.Local_TB2, fam(poisson) link(log) vce(robust) nolog eform
codebook Cond_ingres2
glm Re_tratTB2 ib2.Cond_ingres2, fam(poisson) link(log) vce(robust) nolog eform
codebook Esq_tratam2
glm Re_tratTB2 ib1.Esq_tratam2, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 i.Irregularidad2, fam(poisson) link(log) vce(robust) nolog eform

glm Re_tratTB2 i.Genero2 Edad1 ib2.Red_atenc3 i.Alcoholismo2 i.Tabaquismo2 i.Drogadiccion2 i.DM2_2 i.VIH2 i.Local_TB2 ib2.Cond_ingres2 ib1.Esq_tratam2 i.Irregularidad2, fam(poisson) link(log) vce(robust) nolog eform
glm Re_tratTB2 Edad1 i.Alcoholismo2 i.Tabaquismo2 i.Drogadiccion2 i.DM2_2 i.VIH2 i.Local_TB2 ib2.Cond_ingres2 ib1.Esq_tratam2 i.Irregularidad2, fam(poisson) link(log) vce(robust) nolog eform





Tabela Origem: RSTD_RSM_P_T_L_E_J / RSTD_EGF_P_T_L_E_J / RSTD_RVF_P_T_L_E_J
Tabela Fato: FAT_PUSIN_PLEI_CNTR_HR_RRV
Bases: H70C e H70E.

Evento: 201903087000 / 201903088000 - tabela origem
Evento: 201903088000 - tabela Fato

======== TABELA ORIGEM ===========================================

----------------------RSTD_RSM_P_T_L_E_J  -----------------------------------------------------
SELECT *FROM RSTD_RSM_P_T_L_E_J
WHERE CD_EVCT = 201903087000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.

SELECT count(*) FROM RSTD_RSM_P_T_L_E_J 
WHERE CD_EVCT = 201903087000  
-- número de registros 1008120
-----------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	CD_PROD,
	CD_LEIL,
  CD_CNTR,
	DT_INIO,
	DT_FIM,
	QT_ACA_INFLEX,
	FT_F_RESS_RESP
FROM RSTD_RSM_P_T_L_E_J 
WHERE CD_EVCT = 201903087000  and nu_parc_usin = 909106
order by 2,3,4,5,6 
-- número de registros 1008120
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 20832
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 909106
-----------------------------------------
SELECT cd_evct, 
sum (QT_ACA_INFLEX), sum (FT_F_RESS_RESP)
FROM RSTD_RSM_P_T_L_E_J 
WHERE CD_EVCT = 201903087000
group by cd_evct
-- Soma da quantidade de valores campo QT_ACA_INFLEX: 32773267898,692896 FT_F_RESS_RESP:903,000000000903

----------------------RSTD_EGF_P_T_L_E_J -----------------------------------------------------
SELECT *FROM RSTD_EGF_P_T_L_E_J
WHERE CD_EVCT = 201903088000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.

SELECT count(*) FROM RSTD_EGF_P_T_L_E_J
WHERE CD_EVCT = 201903088000  
-- número de registros 26040
-----------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	CD_PROD,
	CD_LEIL,
  CD_CNTR,
	DT_INIO,
	DT_FIM,
	QT_OBE_PROD_EFE_GFIN
FROM RSTD_EGF_P_T_L_E_J
WHERE CD_EVCT = 201903088000  and nu_parc_usin = 912112
order by 2,3,4,5,6 
-- número de registros 26040
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 26040
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 912112
-----------------------------------------
select cd_evct, 
sum (QT_OBE_PROD_EFE_GFIN)
FROM RSTD_EGF_P_T_L_E_J
WHERE CD_EVCT = 	201903088000
group by cd_evct
-- Soma da quantidade de valores campo QT_OBE_PROD_EFE_GFIN: 7094572974,54444
	
----------------------RSTD_RVF_P_T_L_E_J -----------------------------------------------------
SELECT *FROM RSTD_RVF_P_T_L_E_J
WHERE CD_EVCT = 201903088000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.

SELECT count(*) FROM RSTD_RVF_P_T_L_E_J
WHERE CD_EVCT = 201903088000  
-- número de registros 26040
-----------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	CD_PROD,
	CD_LEIL,
  CD_CNTR,
	DT_INIO,
	DT_FIM,
	QT_ENEFE_OP
FROM RSTD_RVF_P_T_L_E_J
WHERE CD_EVCT = 201903088000  and nu_parc_usin = 912112
order by 2,3,4,5,6 
-- número de registros 26040
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 26040
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 912112
-----------------------------------------
select cd_evct, 
sum (QT_ENEFE_OP)
FROM RSTD_RVF_P_T_L_E_J
WHERE CD_EVCT = 201903088000
group by cd_evct
-- Soma da quantidade de valores campo QT_ENEFE_OP: 9007,509058

====== TABELA FATO ===============================================

SELECT COUNT(*) FROM FAT_PUSIN_PLEI_CNTR_HR_RRV
WHERE CD_EVCT = 201903088000
-- número de registros 1034904
----------------------------------------------
SELECT * FROM FAT_PUSIN_PLEI_CNTR_HR_RRV
WHERE CD_EVCT = 201903088000
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
--------------------------------------
SELECT DISTINCT 
	A.CD_EVCT,
	(select nu_seql_parc_ativ from dim_parc_ativ C where C.id_parc_ativ = A.ID_PUSIN) AS NU_PARC_USIN,
	(select NU_SEQL_PROD from dim_prod N where A.ID_PROD = N.ID_PROD) as CD_PROD,
	(select NU_SEQL_LEIL from dim_leil M where A.ID_LEIL = M.ID_LEIL) as CD_LEIL,
    (select cd_cntr from dim_cntr C where C.id_cntr = A.ID_CNTR) AS CD_CNTR,
	(select DT_HR from dim_hr G where G.id_hr = A.ID_HR ) as DT_H_INI,
	A.QT_ACA_INFLEX,
	A.FT_F_RESS_RESP,
	A.QT_OBE_PROD_EFE_GFIN,
	A.QT_ENEFE_OP
FROM FAT_PUSIN_PLEI_CNTR_HR_RRV A
WHERE A.cd_evct = 201903088000 and id_pusin in (1064251,1097374,1097324,1090676,1085147)
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões
-- número de registros = 1034904
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 909106
-- número de registros da amostragem nu_parc_usin = 909106 / id_pusin in (1064251,1097374,1097324,1090676,1085147)= 
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 912112
-- número de registros da amostragem nu_parc_usin = 912112 / id_pusin in (1065899)= 
--------------------------------------------------------------
select cd_evct, 
sum (QT_ACA_INFLEX),sum (FT_F_RESS_RESP),sum (QT_OBE_PROD_EFE_GFIN), sum(QT_ENEFE_OP)
FROM FAT_PUSIN_PLEI_CNTR_HR_RRV
WHERE CD_EVCT = 201903088000 
group by cd_evct
-- and id_pusin in (1065899)
-- Soma da quantidade de valores campo QT_ACA_INFLEX: 13196818,42 FT_F_RESS_RESP:1560339311,75 QT_OBE_PROD_EFE_GFIN: QT_ENEFE_OP
-- and nu_parc_usin = 909106/ id_pusin in (1064251,1097374,1097324,1090676,1085147)- verificado amostragem Soma da quantidade de valores 
-- campo QT_ACA_INFLEX: 676259689,170768 FT_F_RESS_RESP:384,000000000384 QT_OBE_PROD_EFE_GFIN: 0 QT_ENEFE_OP: 0
-- and nu_parc_usin = 912112/ id_pusin in (1065899)- verificado amostragem Soma da quantidade de valores 
-- campo QT_ACA_INFLEX: 0 FT_F_RESS_RESP:0 QT_OBE_PROD_EFE_GFIN:7094572974,54444 QT_ENEFE_OP: 9007,509058
	
----------------------
select * from dim_parc_ativ
where nu_seql_parc_ativ = 390

#########################################
NU_PARC_USIN  --> ID_PUSIN
909106
912112

SELECT * FROM DIM_PARC_ATIV
WHERE NU_SEQL_PARC_ATIV = 912112  AND DT_FIM_VALD IS NULL

SELECT * FROM FAT_PUSIN_PLEI_CNTR_HR_RRV
WHERE ID_PUSIN IN (1027882,1049452,1065531,1065036,1052291) AND ID_PROD IN(342)

SELECT * FROM DIM_PROD
WHERE NU_SEQL_PROD = 393 AND DT_FIM_VALD IS NULL
Tabela Origem: RSTD_RSM_P_T_L_E_M / RSTD_ARR_P_T_L_E_M / RSTD_RVF_P_T_L_E_M
Tabela Fato: FAT_PUSIN_PLEI_CNTR_MES_RRV
Bases: H70C e H70E.

Evento: 201903087000 / 201903088000 - tabela origem
Evento: 201903088000 - tabela Fato

======== TABELA ORIGEM ===========================================

----------------------RSTD_RSM_P_T_L_E_M -----------------------------------------------------
SELECT count(*) FROM RSTD_RSM_P_T_L_E_M
WHERE CD_EVCT = 201903087000  
-- número de registros 9346

SELECT *FROM RSTD_RSM_P_T_L_E_M
WHERE CD_EVCT = 201903087000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-----------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	CD_PROD,
	CD_LEIL,
  CD_CNTR,
	QT_ACA_INFLEX_M,
	VL_RESS_INFLEX_M,
	VL_RESS_RESP,
	QT_TOT_RESS_NH
FROM RSTD_RSM_P_T_L_E_M
WHERE CD_EVCT = 201903087000  and nu_parc_usin = 888069
order by 2,3,4,5
-- número de registros 9346
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 29
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 888069
-----------------------------------------
SELECT cd_evct, 
sum (QT_ACA_INFLEX_M), sum (VL_RESS_INFLEX_M), sum(VL_RESS_RESP), sum(QT_TOT_RESS_NH)
FROM RSTD_RSM_P_T_L_E_M
WHERE CD_EVCT = 201903087000
group by cd_evct
-- Soma da quantidade de valores campo QT_ACA_INFLEX_M:52026795,004158 VL_RESS_INFLEX_M:30425680,34 VL_RESS_RESP:63354755,78
-- QT_TOT_RESS_NH:380128521,269073

----------------------RSTD_ARR_P_T_L_E_M  -----------------------------------------------------
SELECT count(*) FROM RSTD_ARR_P_T_L_E_M 
WHERE CD_EVCT = 201903088000  
-- número de registros 13742

SELECT *FROM RSTD_ARR_P_T_L_E_M 
WHERE CD_EVCT = 201903088000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-----------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	CD_PROD,
	CD_LEIL,
	CD_CNTR,
	VL_DIF_TOT_RV
FROM RSTD_ARR_P_T_L_E_M
WHERE CD_EVCT = 201903088000  and nu_parc_usin = 896948
order by 2,3,4,5,6 
-- número de registros 13742
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 28
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 896948
-----------------------------------------
SELECT cd_evct, 
sum (VL_DIF_TOT_RV)
FROM RSTD_ARR_P_T_L_E_M 
WHERE CD_EVCT = 201903088000
group by cd_evct
-- Soma da quantidade de valores campo VL_DIF_TOT_RV:1631985555,77

----------------------RSTD_RVF_P_T_L_E_M -----------------------------------------------------
SELECT count(*) FROM RSTD_RVF_P_T_L_E_M
WHERE CD_EVCT = 201903088000  
-- número de registros 13742

SELECT *FROM RSTD_RVF_P_T_L_E_M
WHERE CD_EVCT = 201903088000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-----------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	CD_PROD,
	CD_LEIL,
	CD_CNTR,
	VL_P3_P,
	VL_P3_RV,
	VL_PSR_GFIN,
	VL_PVAC,
	VL_PVF,
	VL_PVR,
	VL_R3_P,
	VL_RA_P3,
	VL_RV_M,
	VL_TAF_GFIN,
	VL_TAF_GFIN_P,
	VL_TAF_PROD,
	VL_TOT_RV_D
FROM RSTD_RVF_P_T_L_E_M
WHERE CD_EVCT = 201903088000  and nu_parc_usin = 909575
order by 2,3,4,5 
-- número de registros 13742
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 37
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 909575
-----------------------------------------
SELECT cd_evct, 
sum (VL_P3_P), sum(VL_P3_RV), sum(VL_PSR_GFIN), sum(VL_PVAC), sum(VL_PVF), sum(VL_PVR), sum(VL_R3_P), sum(VL_RA_P3), sum(VL_RV_M), sum(VL_TAF_GFIN),
sum (VL_TAF_GFIN_P), sum(VL_TAF_PROD), sum(VL_TOT_RV_D)
FROM RSTD_RVF_P_T_L_E_M
WHERE CD_EVCT = 201903088000
group by cd_evct
-- Soma da quantidade de valores campo VL_P3_P:429262739,56  VL_P3_RV:520555266,52  VL_PSR_GFIN: 1500532796,4 VL_PVAC:3361069369,48
-- VL_PVF:232612796,32  VL_PVR:76622664,03  VL_R3_P:-91292526,96  VL_RA_P3:-1093698,4  VL_RV_M:1560339311,75  VL_TAF_GFIN:5041604054,22
-- VL_TAF_GFIN_P: 6722138738,96  VL_TAF_PROD:35142481  VL_TOT_RV_D:1634409775,43

====== TABELA FATO ===============================================

====== TABELA FATO ===============================================

SELECT COUNT(*) FROM FAT_PUSIN_PLEI_CNTR_MES_RRV
WHERE CD_EVCT = 201903088000  
-- número de registros 23088
----------------------------------------------
SELECT * FROM FAT_PUSIN_PLEI_CNTR_MES_RRV
WHERE CD_EVCT = 201903088000
-- Todos os registros foram carregados , porem temos os campos ID_CNTR; ID_PERF_AGVEND; ID_AGVEND; ID_PERF_AGCOMP; ID_AGCOMP; ID_SMER_ORIG;
-- ID_SMER_DEST; ID_PUSIN; ID_ATIV com campos genéricos.
--------------------------------------
SELECT DISTINCT 
	A.CD_EVCT,
	(select nu_seql_parc_ativ from dim_parc_ativ C where C.id_parc_ativ = A.ID_PUSIN) AS NU_PARC_USIN,
	(select NU_SEQL_PROD from dim_prod N where A.ID_PROD = N.ID_PROD) as CD_PROD,
	(select NU_SEQL_LEIL from dim_leil M where A.ID_LEIL = M.ID_LEIL) as CD_LEIL,
	A.QT_ACA_INFLEX_M,
	A.VL_RESS_INFLEX_M,
	A.VL_RESS_RESP,
	A.QT_TOT_RESS_NH,
	A.VL_DIF_TOT_RV,
	A.VL_P3_P,
	A.VL_P3_RV,
	A.VL_PSR_GFIN,
	A.VL_PVAC,
	A.VL_PVF,
	A.VL_PVR,
	A.VL_R3_P,
	A.VL_RA_P3,
	A.VL_RV_M,
	A.VL_TAF_GFIN,
	A.VL_TAF_GFIN_P,
	A.VL_TAF_PROD,
	A.VL_TOT_RV_D
FROM FAT_PUSIN_PLEI_CNTR_MES_RRV  A
WHERE A.cd_evct = 201903088000 and id_pusin in (1064251,1097374,1097324,1090676,1085147)
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões
-- número de registros = 1034904
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 909106
-- número de registros da amostragem nu_parc_usin = 909106 / id_pusin in (1064251,1097374,1097324,1090676,1085147)= 
--------------------------------------------------------------
select cd_evct, 
sum (QT_ACA_INFLEX_M),sum (VL_RESS_INFLEX_M), sum (VL_RESS_RESP), sum(QT_TOT_RESS_NH), sum(VL_DIF_TOT_RV), sum(VL_P3_P), sum(VL_P3_RV), 
sum(VL_PSR_GFIN),sum (VL_PVAC), sum(VL_PVF), sum(VL_PVR), sum(VL_R3_P), sum(VL_RA_P3), sum(VL_RV_M), sum(VL_TAF_GFIN), sum(VL_TAF_GFIN_P),
sum(VL_TAF_PROD), sum(VL_TOT_RV_D)
FROM FAT_PUSIN_PLEI_CNTR_MES_RRV
WHERE CD_EVCT = 201903088000
group by cd_evct
-- and id_pusin in (1064251,1097374,1097324,1090676,1085147)
-- Soma da quantidade de valores campo QT_ACA_INFLEX_M: 52026795,004158, VL_RESS_INFLEX_M:30425680,34 VL_RESS_RESP:63354755,78, 
-- QT_TOT_RESS_NH: 380128521,269073 , VL_DIF_TOT_RV:1631985555,77 VL_P3_P:429262739,56 VL_P3_RV:520555266,52 VL_PSR_GFIN:1500532796,4
-- VL_PVAC:3361069369,48 , VL_PVF:232612796,32 , VL_PVR:76622664,03 , VL_R3_P: -91292526,96
-- VL_RA_P3:-1093698,4 , VL_RV_M: 1560339311,75 , VL_TAF_GFIN: 5041604054,22, VL_TAF_GFIN_P:6722138738,96 , VL_TAF_PROD:35142481 , 
-- VL_TOT_RV_D:1634409775,43

-- and nu_parc_usin = 909106/ id_pusin in (1064251,1097374,1097324,1090676,1085147)- verificado amostragem Soma da quantidade de valores 
-- campo QT_ACA_INFLEX_M: 164898,225665, VL_RESS_INFLEX_M:56316,4, VL_RESS_RESP:155213,24, QT_TOT_RESS_NH: 931279,31708 , VL_DIF_TOT_RV:1159158,24
-- VL_P3_P:655762,88, VL_P3_RV:655762,88, VL_PSR_GFIN:1159158,24 , VL_PVAC:2318316,48 , VL_PVF:196301,03 , VL_PVR:60675,07 , VL_R3_P: 0
-- VL_RA_P3:0 , VL_RV_M: 1159158,2 , VL_TAF_GFIN: 3477474,72, VL_TAF_GFIN_P:4636632,96 , VL_TAF_PROD:0 , VL_TOT_RV_D:1159158,24
----------------------
select * from dim_parc_ativ
where nu_seql_parc_ativ = 390

#########################################
NU_PARC_USIN  --> ID_PUSIN
889887

SELECT * FROM DIM_PARC_ATIV
WHERE NU_SEQL_PARC_ATIV = 888490 AND DT_FIM_VALD IS NULL

SELECT * FROM FAT_PUSIN_PLEI_CNTR_MES_RRV
WHERE ID_PUSIN IN (1027882,1049452,1065531,1065036,1052291) AND ID_PROD IN(342)

SELECT * FROM DIM_PROD
WHERE NU_SEQL_PROD = 393 AND DT_FIM_VALD IS NULL
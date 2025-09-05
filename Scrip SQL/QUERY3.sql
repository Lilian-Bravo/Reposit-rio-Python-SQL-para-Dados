2021_07-Liquidação MCSD CCEAR-D LMD
Tabela Origem: RSTD_LMD_AR_AV_T_L_M
Tabela Fato: FAT_S_PERF_AGCV_PLEI_MLIQ_MCSD
Bases: H70C e H70E.

Evento: 202107170000 - tabela origem
Evento: 202107170000 - tabela Fato

====================================================================== TABELA ORIGEM ==========================================================================

------------------------------------------------------------------- RSTD_LMD_AR_AV_T_L_M -----------------------------------------------------
SELECT count(*) FROM RSTD_LMD_AR_AV_T_L_M
WHERE CD_EVCT = 202107170000  
-- número de registros 327

SELECT *FROM RSTD_LMD_AR_AV_T_L_M
WHERE CD_EVCT = 202107170000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
  CD_EVCT,
  CD_AGCESS,
  CD_AGVEND,
  CD_PROD,
  CD_LEIL,
  VL_P3_DISP,
  VL_PAGP_CCEAR_P3,
  VL_RECP_CCEAR_P3
FROM RSTD_LMD_AR_AV_T_L_M
WHERE CD_EVCT = 202107170000 and cd_prod = 419
order by 2,3,4,5
-- and cd_prod = 419
-- número de registros 327
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 240
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem cd_prod = 419
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT cd_evct, 
sum (VL_P3_DISP), sum (VL_PAGP_CCEAR_P3), sum(VL_RECP_CCEAR_P3)
FROM RSTD_LMD_AR_AV_T_L_M
WHERE CD_EVCT = 202107170000 and cd_prod = 419
group by cd_evct
-- and cd_prod = 419
-- Soma da quantidade de valores campo VL_P3_DISP:236492695,27  VL_PAGP_CCEAR_P3: 202708024,52 VL_RECP_CCEAR_P3:320954372,24
-- Soma da quantidade de valores para amostra campo VL_P3_DISP:230705045,7  VL_PAGP_CCEAR_P3:197747182,05  VL_RECP_CCEAR_P3:313099704,91
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

2021_07-Liquidação MCSD CCEAR-D LMD
Tabela Fato: FAT_S_PERF_AGCV_PLEI_MLIQ_MCSD
Bases:H70E.

Evento: 202107170000
====================================================================== TABELA FATO ================================================================================

SELECT COUNT(*) FROM FAT_S_PERF_AGCV_PLEI_MLIQ_MCSD
WHERE CD_EVCT = 202107170000
-- número de registros 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM FAT_S_PERF_AGCV_PLEI_MLIQ_MCSD
WHERE CD_EVCT = 202107170000
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT DISTINCT 
	A.CD_EVCT,
	(select nu_seql_parc_ativ from dim_parc_ativ C where C.id_parc_ativ = A.ID_PUSIN) AS NU_PARC_USIN,
	(select NU_SEQL_PROD from dim_prod N where A.ID_PROD = N.ID_PROD) as CD_PROD,
	(select NU_SEQL_LEIL from dim_leil M where A.ID_LEIL = M.ID_LEIL) as CD_LEIL,
	(select cd_cntr from dim_cntr C where C.id_cntr = A.ID_CNTR) AS CD_CNTR,
	(select DT_HR from dim_hr G where G.id_hr = A.ID_HR ) as DT_H_INI,
	A.VL_P3_DISP,
	A.VL_PAGP_CCEAR_P3,
	A.VL_RECP_CCEAR_P3
FROM FAT_S_PERF_AGCV_PLEI_MLIQ_MCSD  A
WHERE A.cd_evct = 202107170000 and id_pusin in (50330,598214,1044264,1035294,1066003,1066018,1085265,1086431)
-- and nu_parc_usin = 888069
-- número de registros 
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem =
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 888069
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
select cd_evct, 
sum (VL_P3_DISP),sum (VL_PAGP_CCEAR_P3), sum(VL_RECP_CCEAR_P3)
FROM FAT_S_PERF_AGCV_PLEI_MLIQ_MCSD
WHERE CD_EVCT = 202107170000
group by cd_evct
-- and id_pusin in (50330,598214,1044264,1035294,1066003,1066018,1085265,1086431)
-- Soma da quantidade de valores campo VL_P3_DISP:  VL_PAGP_CCEAR_P3:  VL_RECP_CCEAR_P3
-- Soma da quantidade de valores para amostra campo VL_P3_DISP:  VL_PAGP_CCEAR_P3:  VL_RECP_CCEAR_P3:
	                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from dim_parc_ativ
where nu_seql_parc_ativ = 390

#########################################
NU_PARC_USIN  --> ID_PUSIN
888069

SELECT * FROM DIM_PARC_ATIV
WHERE NU_SEQL_PARC_ATIV = 888069 AND DT_FIM_VALD IS NULL

SELECT * FROM FAT_S_PERF_AGCV_PLEI_MLIQ_MCSD
WHERE ID_PUSIN IN (1027882,1049452,1065531,1065036,1052291) AND ID_PROD IN(342)

SELECT * FROM DIM_PROD
WHERE NU_SEQL_PROD = 393 AND DT_FIM_VALD IS NULL
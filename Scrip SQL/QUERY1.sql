2021_07-Liquidação MCSD CCEAR-D LMD
Tabela Origem: RSTD_LMD_AV_M
Tabela Fato: FAT_S_PERF_AGCV_MLIQ_MCSD
Bases: H70C e H70E.

Evento: 202107170000 - tabela origem
Evento: 202107170000 - tabela Fato

====================================================================== TABELA ORIGEM ==========================================================================

------------------------------------------------------------------- RSTD_LMD_AV_M -----------------------------------------------------
SELECT count(*) FROM RSTD_LMD_AV_M
WHERE CD_EVCT = 202107170000  
-- número de registros 

SELECT *FROM RSTD_LMD_AV_M
WHERE CD_EVCT = 202107170000  
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	CD_PROD,
	CD_LEIL,
    CD_CNTR,
	PC_PRIFC_PROD_P3,
FROM RSTD_LMD_AV_M
WHERE CD_EVCT = 202107170000
order by 2,3,4
-- and nu_parc_usin = 888069
-- número de registros 
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem = 
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 888069
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT cd_evct, 
sum (PC_PRIFC_PROD_P3)
FROM RSTD_LMD_AV_M
WHERE CD_EVCT = 202107170000 and nu_parc_usin = 888069
group by cd_evct
-- and nu_parc_usin = 888069
-- Soma da quantidade de valores campo PC_PRIFC_PROD_P3:
-- Soma da quantidade de valores para amostra campo PC_PRIFC_PROD_P3:  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

2021_07-Liquidação MCSD CCEAR-D LMD
Tabela Fato: FAT_S_PAGVEN_MLIQ_MCSD
Bases:H70E.

Evento: 202107170000
====================================================================== TABELA FATO ================================================================================

SELECT COUNT(*) FROM FAT_S_PAGVEN_MLIQ_MCSD
WHERE CD_EVCT = 202107170000
-- número de registros 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM FAT_S_PAGVEN_MLIQ_MCSD
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
	A.PC_PRIFC_PROD_P3
FROM FAT_S_PAGVEN_MLIQ_MCSD  A
WHERE A.cd_evct = 202107170000 and id_pusin in (50330,598214,1044264,1035294,1066003,1066018,1085265,1086431)
-- and nu_parc_usin = 888069
-- número de registros 
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
-- número de registros da amostragem =
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões da amostragem nu_parc_usin = 888069
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
select cd_evct, 
sum (PC_PRIFC_PROD_P3)
FROM FAT_S_PAGVEN_MLIQ_MCSD
WHERE CD_EVCT = 202107170000
group by cd_evct
-- and id_pusin in (50330,598214,1044264,1035294,1066003,1066018,1085265,1086431)
-- Soma da quantidade de valores campo PC_PRIFC_PROD_P3:
-- Soma da quantidade de valores para amostra campo PC_PRIFC_PROD_P3:
	                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from dim_parc_ativ
where nu_seql_parc_ativ = 390

#########################################
NU_PARC_USIN  --> ID_PUSIN
888069

SELECT * FROM DIM_PARC_ATIV
WHERE NU_SEQL_PARC_ATIV = 888069 AND DT_FIM_VALD IS NULL

SELECT * FROM FAT_S_PAGVEN_MLIQ_MCSD
WHERE ID_PUSIN IN (1027882,1049452,1065531,1065036,1052291) AND ID_PROD IN(342)

SELECT * FROM DIM_PROD
WHERE NU_SEQL_PROD = 393 AND DT_FIM_VALD IS NULL
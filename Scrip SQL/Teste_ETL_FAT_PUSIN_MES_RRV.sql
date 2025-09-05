Tabela Origem: RSTD_RSM_P_M
Tabela Fato: FAT_PUSIN_MES_RRV
Bases: H70C e H70E.

Evento: 201903087000 - tabela origem
Evento: 201903088000 - tabela Fato

======== TABELA ORIGEM ===========================================

SELECT *FROM RSTD_RSM_P_M
WHERE CD_EVCT = 201903087000
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.

SELECT count(*) FROM RSTD_RSM_P_M
WHERE CD_EVCT = 201903087000  
-- número de registros 11
-----------------------------------------
SELECT 
	CD_EVCT,
	NU_PARC_USIN,
	VL_PLD_M_NDOMP
FROM RSTD_RSM_P_M  
WHERE CD_EVCT = 201903087000  
order by 2
-- número de registros 11
-- Soma da quantidade de valores campo VL_PLD_M_NDOMP: 2804,44
-- and nu_parc_usin = 892802 - verificado amostragem Soma da quantidade de valores campo VL_PLD_M_NDOMP: 461,88
-----------------------------------------
select cd_evct, 
sum (VL_PLD_M_NDOMP)
FROM RSTD_RSM_P_M 
WHERE CD_EVCT = 201903087000
group by cd_evct
-- Soma da quantidade de valores campo VL_PLD_M_NDOMP:2804,44

====== TABELA FATO ===============================================

SELECT COUNT(*) FROM FAT_PUSIN_MES_RRV
WHERE CD_EVCT = 	201903088000  
-- número de registros 11
----------------------------------------------
SELECT * FROM FAT_PUSIN_MES_RRV
WHERE CD_EVCT = 	201903088000
-- Todos os registros foram carregados no campo sem valor genérico para as dimensões.
--------------------------------------
SELECT DISTINCT 
	A.CD_EVCT,
	(select nu_seql_parc_ativ from dim_parc_ativ C where C.id_parc_ativ = A.ID_PUSIN) AS NU_PARC_USIN,
	a.VL_PLD_M_NDOMP
FROM FAT_PUSIN_MES_RRV  A 
WHERE A.cd_evct = 201903088000 and id_pusin in (51663,51661,49274,1086800,1086959,1087427)
-- nu_parc_usin = 892802 /id_pusin in (51663,51661,49274,1086800,1086959,1087427) - verificado amostragem Soma da quantidade de valores campo VL_PLD_M_NDOMP: 461,88

--------------------------------------------------------------
select cd_evct, 
sum (VL_PLD_M_NDOMP)
FROM FAT_PUSIN_MES_RRV
WHERE CD_EVCT = 	201903088000
group by cd_evct
--Soma da quantidade de valores campo VL_PLD_M_NDOMP: 2804,44

--------------------------------------------------------------
select * from dim_parc_ativ
where nu_seql_parc_ativ = 892802

-- NU_PARC_USIN  --> ID_PUSIN

SELECT * FROM DIM_PARC_ATIV
WHERE NU_SEQL_PARC_ATIV = 892802 AND DT_FIM_VALD IS NULL

SELECT * FROM FAT_PUSIN_MES_RRV
WHERE ID_PUSIN IN (51663,51661,49274,1086800,1086959,1087427)
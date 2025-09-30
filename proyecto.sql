-- Creacion de extension espacial para la base de datos

CREATE EXTENSION postgis;

-- Construccion de tabla con numero de nacimientos para el periodo 1987 a 2017 por seccion censal

SELECT barrvere AS barrio, SUM(total) AS total,
SUM(n_1987) AS nac_87, SUM(n_1988) AS nac_88, SUM(n_1989) AS nac_89, SUM(n_1990) AS nac_90,
SUM(n_1991) AS nac_91, SUM(n_1992) AS nac_92, SUM(n_1993) AS nac_93, SUM(n_1994) AS nac_94,
SUM(n_1995) AS nac_95, SUM(n_1996) AS nac_96, SUM(n_1997) AS nac_97, SUM(n_1998) AS nac_98,
SUM(n_1999) AS nac_99, SUM(n_2000) AS nac_00, SUM(n_2001) AS nac_01, SUM(n_2002) AS nac_02,
SUM(n_2003) AS nac_03, SUM(n_2004) AS nac_04, SUM(n_2005) AS nac_05, SUM(n_2006) AS nac_06,
SUM(n_2007) AS nac_07, SUM(n_2008) AS nac_08, SUM(n_2009) AS nac_09, SUM(n_2010) AS nac_10,
SUM(n_2011) AS nac_11, SUM(n_2012) AS nac_12, SUM(n_2013) AS nac_13, SUM(n_2014) AS nac_14,
SUM(n_2015) AS nac_15, SUM(n_2016) AS nac_16, SUM(n_2017) AS nac_17
FROM manzana_censal_nacimientos_87_17
GROUP BY barrio 
ORDER BY total DESC, nac_87, nac_88, nac_89, nac_90, nac_91, nac_92, nac_93, nac_94, nac_95, nac_96, nac_97,
nac_98, nac_99, nac_00, nac_01, nac_02, nac_03, nac_04, nac_05, nac_06, nac_07, nac_08, nac_09,
nac_10, nac_11, nac_12, nac_13, nac_14, nac_15, nac_16, nac_17;


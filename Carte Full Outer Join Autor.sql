SELECT *
FROM public."Carte"
FULL OUTER JOIN public."Autor"
ON "Carte"."ID_carte" = public."Autor"."ID_carte"
ORDER BY "Carte"."ID_carte";
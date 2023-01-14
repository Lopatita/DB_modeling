SELECT "Autor"."Nume","Carte"."Titlu"
FROM public."Autor" 
INNER JOIN public."Carte"
ON "Carte"."ID_carte" = public."Autor"."ID_carte"
ORDER BY "Autor"."ID_autor";
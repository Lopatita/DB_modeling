UPDATE public."Carte"
	SET  "Titlu"='Titlu', "An"=now(), "Cota"='Cota', "ID_editura"=0, "ID_descriere fizica"=0, "ID_locatie"=0
	WHERE "ID_carte"=0;
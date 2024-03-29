CREATE TABLE collectivite(
    col_code VARCHAR(3) PRIMARY KEY,
    col_nom VARCHAR(50) NOT NULL,
    col_population INT NOT NULL,
    col_superficie INT NOT NULL,
    col_region VARCHAR(30) NOT NULL);

CREATE TABLE ville (
    vil_num SERIAL PRIMARY KEY,
    vil_nom VARCHAR(50) NOT NULL,
    vil_population INT NOT NULL,
    vil_statut VARCHAR(15) CHECK(vil_statut IN ('préfecture', 'sous-préfecture')),
    col_code VARCHAR(3) NOT NULL,
    FOREIGN KEY (col_code) REFERENCES collectivite(col_code));


INSERT INTO collectivite VALUES
('1', 'Ain', 588853, 5762, 'Rhône-Alpes'),
('10', 'Aube', 303298, 6004, 'Champagne-Ardenne'),
('11', 'Aude', 353980, 6139, 'Languedoc-Roussillon'),
('12', 'Aveyron', 277048, 8735, 'Midi-Pyrénées'),
('13', 'Bouches-du-Rhône', 1967299, 5087, 'Provence-Alpes-Côte d''Azur'),
('14', 'Calvados', 680908, 5548, 'Basse-Normandie'),
('15', 'Cantal', 148380, 5726, 'Auvergne'),
('16', 'Charente', 351563, 5956, 'Poitou-Charentes'),
('17', 'Charente-Maritime', 616607, 6864, 'Poitou-Charentes'),
('18', 'Cher', 311022, 7235, 'Centre'),
('19', 'Corrèze', 243352, 5857, 'Limousin'),
('2', 'Aisne', 539870, 7369, 'Picardie'),
('21', 'Côte-d''Or', 524144, 8763, 'Bourgogne'),
('22', 'Côtes-d''Armor', 587519, 6878, 'Bretagne'),
('23', 'Creuse', 123584, 5565, 'Limousin'),
('24', 'Dordogne', 412082, 9060, 'Aquitaine'),
('25', 'Doubs', 525276, 5234, 'Franche-Comté'),
('26', 'Drôme', 482984, 6530, 'Rhône-Alpes'),
('27', 'Eure', 582822, 6040, 'Haute-Normandie'),
('28', 'Eure-et-Loir', 425502, 5880, 'Centre'),
('29', 'Finistère', 893914, 6733, 'Bretagne'),
('2A', 'Corse-du-Sud', 141330, 4014, 'Corse'),
('2B', 'Haute-Corse', 164344, 4666, 'Corse'),
('3', 'Allier', 343046, 7340, 'Auvergne'),
('30', 'Gard', 701883, 5853, 'Languedoc-Roussillon'),
('31', 'Haute-Garonne', 1230820, 6309, 'Midi-Pyrénées'),
('32', 'Gers', 187181, 6257, 'Midi-Pyrénées'),
('33', 'Gironde', 1434661, 10725, 'Aquitaine'),
('34', 'Hérault', 1031974, 6101, 'Languedoc-Roussillon'),
('35', 'Ille-et-Vilaine', 977449, 6775, 'Bretagne'),
('36', 'Indre', 232268, 6791, 'Centre'),
('37', 'Indre-et-Loire', 588420, 6127, 'Centre'),
('38', 'Isère', 1197038, 7431, 'Rhône-Alpes'),
('39', 'Jura', 261277, 4999, 'Franche-Comté'),
('4', 'Alpes-de-Haute-Provence', 159450, 6925, 'Provence-Alpes-Côte d''Azur'),
('40', 'Landes', 379341, 9243, 'Aquitaine'),
('41', 'Loir-et-Cher', 327868, 6343, 'Centre'),
('42', 'Loire', 746115, 4781, 'Rhône-Alpes'),
('43', 'Haute-Loire', 223122, 4977, 'Auvergne'),
('44', 'Loire-Atlantique', 1266358, 6815, 'Pays de Loire'),
('45', 'Loiret', 653510, 6775, 'Centre'),
('46', 'Lot', 173562, 5217, 'Midi-Pyrénées'),
('47', 'Lot-et-Garonne', 329697, 5361, 'Aquitaine'),
('48', 'Lozère', 77163, 5167, 'Languedoc-Roussillon'),
('49', 'Maine-et-Loire', 780082, 7166, 'Pays de Loire'),
('5', 'Hautes-Alpes', 135836, 5549, 'Provence-Alpes-Côte d''Azur'),
('50', 'Manche', 497762, 5938, 'Basse-Normandie'),
('51', 'Marne', 566145, 8162, 'Champagne-Ardenne'),
('52', 'Haute-Marne', 185214, 6211, 'Champagne-Ardenne'),
('53', 'Mayenne', 305147, 5175, 'Pays de Loire'),
('54', 'Meurthe-et-Moselle', 731019, 5246, 'Lorraine'),
('55', 'Meuse', 194003, 6211, 'Lorraine'),
('56', 'Morbihan', 716182, 6823, 'Bretagne'),
('57', 'Moselle', 1044898, 6216, 'Lorraine'),
('58', 'Nièvre', 220199, 6817, 'Poitou-Charentes'),
('59', 'Nord', 2571940, 5743, 'Nord-Pas-de-Calais'),
('6', 'Alpes-Maritimes', 1079100, 4299, 'Provence-Alpes-Côte d''Azur'),
('60', 'Oise', 801512, 5860, 'Picardie'),
('61', 'Orne', 292210, 6103, 'Basse-Normandie'),
('62', 'Pas-de-Calais', 1461257, 6671, 'Nord-Pas-de-Calais'),
('63', 'Puy-de-Dôme', 629416, 7970, 'Auvergne'),
('64', 'Pyrénées-Atlantiques', 650356, 7645, 'Aquitaine'),
('65', 'Hautes-Pyrénées', 229670, 4464, 'Midi-Pyrénées'),
('66', 'Pyrénées-Orientales', 445890, 4116, 'Languedoc-Roussillon'),
('67', 'Bas-Rhin', 1094439, 4755, 'Alsace'),
('68', 'Haut-Rhin', 748614, 3525, 'Alsace'),
('69', 'Rhône', 1708671, 3249, 'Rhône-Alpes'),
('7', 'Ardèche', 313578, 5529, 'Rhône-Alpes'),
('70', 'Haute-Saône', 239194, 5360, 'Franche-Comté'),
('71', 'Saône-et-Loire', 554720, 8575, 'Bourgogne'),
('72', 'Sarthe', 561050, 6206, 'Pays de Loire'),
('73', 'Savoie', 411007, 6028, 'Rhône-Alpes'),
('74', 'Haute-Savoie', 725794, 4388, 'Rhône-Alpes'),
('75', 'Paris', 2234105, 105, 'Ile-de-France'),
('76', 'Seine-Maritime', 1250120, 6278, 'Haute-Normandie'),
('77', 'Seine-et-Marne', 1313414, 5915, 'Ile-de-France'),
('78', 'Yvelines', 1407560, 2284, 'Ile-de-France'),
('79', 'Deux-Sèvres', 366339, 5999, 'Poitou-Charentes'),
('8', 'Ardennes', 283296, 5229, 'Champagne-Ardenne'),
('80', 'Somme', 569775, 6170, 'Picardie'),
('81', 'Tarn', 374018, 5758, 'Midi-Pyrénées'),
('82', 'Tarn-et-Garonne', 239291, 3718, 'Midi-Pyrénées'),
('83', 'Var', 1007303, 5973, 'Provence-Alpes-Côte d''Azur'),
('84', 'Vaucluse', 540065, 3567, 'Provence-Alpes-Côte d''Azur'),
('85', 'Vendée', 626411, 6720, 'Pays de Loire'),
('86', 'Vienne', 426066, 6990, 'Poitou-Charentes'),
('87', 'Haute-Vienne', 374849, 5520, 'Limousin'),
('88', 'Vosges', 380192, 5874, 'Lorraine'),
('89', 'Yonne', 343377, 7427, 'Bourgogne'),
('9', 'Ariège', 151117, 4890, 'Midi-Pyrénées'),
('90', 'Territoire de Belfort', 142461, 609, 'Franche-Comté'),
('91', 'Essonne', 1208004, 1804, 'Ile-de-France'),
('92', 'Hauts-de-Seine', 1561745, 176, 'Ile-de-France'),
('93', 'Seine-Saint-Denis', 1515983, 236, 'Ile-de-France'),
('94', 'Val-de-Marne', 1318537, 245, 'Ile-de-France'),
('95', 'Val-d''Oise', 1168892, 1246, 'Ile-de-France'),
('971', 'Guadeloupe', 401554, 1628, 'Guadeloupe'),
('972', 'Martinique', 396404, 1128, 'Martinique'),
('973', 'Guyane', 224469, 83534, 'Guyane'),
('974', 'Réunion', 816364, 2504, 'La Réunion'),
('976', 'Mayotte', 212645, 376, 'Mayotte');


INSERT INTO ville (col_code, vil_nom, vil_population, vil_statut) VALUES
('1', 'Bourg-en-Bresse', 40967, 'préfecture'),
('2', 'Laon', 25282, 'préfecture'),
('3', 'Moulins', 19762, 'préfecture'),
('4', 'Digne-les-Bains', 16304, 'préfecture'),
('5', 'Gap', 40225, 'préfecture'),
('6', 'Nice', 343895, 'préfecture'),
('7', 'Privas', 8313, 'préfecture'),
('8', 'Charleville-Mézières', 48615, 'préfecture'),
('9', 'Foix', 9721, 'préfecture'),
('10', 'Troyes', 60750, 'préfecture'),
('11', 'Carcassonne', 45941, 'préfecture'),
('12', 'Rodez', 24088, 'préfecture'),
('13', 'Marseille', 858120, 'préfecture'),
('14', 'Caen', 106538, 'préfecture'),
('15', 'Aurillac', 26135, 'préfecture'),
('16', 'Angoulême', 41955, 'préfecture'),
('17', 'La Rochelle', 74998, 'préfecture'),
('18', 'Bourges', 66528, 'préfecture'),
('19', 'Tulle', 14325, 'préfecture'),
('2A', 'Ajaccio', 68587, 'préfecture'),
('2B', 'Bastia', 43331, 'préfecture'),
('21', 'Dijon', 153668, 'préfecture'),
('22', 'Saint-Brieuc', 45207, 'préfecture'),
('23', 'Guéret', 13342, 'préfecture'),
('24', 'Périgueux', 30069, 'préfecture'),
('25', 'Besançon', 116690, 'préfecture'),
('26', 'Valence', 62150, 'préfecture'),
('27', 'Évreux', 49461, 'préfecture'),
('28', 'Chartres', 38728, 'préfecture'),
('29', 'Quimper', 63513, 'préfecture'),
('30', 'Nîmes', 151075, 'préfecture'),
('31', 'Toulouse', 466297, 'préfecture'),
('32', 'Auch', 21807, 'préfecture'),
('33', 'Bordeaux', 246586, 'préfecture'),
('34', 'Montpellier', 275318, 'préfecture'),
('35', 'Rennes', 213454, 'préfecture'),
('36', 'Châteauroux', 44479, 'préfecture'),
('37', 'Tours', 136125, 'préfecture'),
('38', 'Grenoble', 160779, 'préfecture'),
('39', 'Lons-le-Saunier', 17311, 'préfecture'),
('40', 'Mont-de-Marsan', 31009, 'préfecture'),
('41', 'Blois', 46351, 'préfecture'),
('42', 'Saint-Étienne', 170761, 'préfecture'),
('43', 'Le Puy-en-Velay', 18634, 'préfecture'),
('44', 'Nantes', 298029, 'préfecture'),
('45', 'Orléans', 114977, 'préfecture'),
('46', 'Cahors', 19630, 'préfecture'),
('47', 'Agen', 34126, 'préfecture'),
('48', 'Mende', 11542, 'préfecture'),
('49', 'Angers', 151056, 'préfecture'),
('50', 'Saint-Lô', 19426, 'préfecture'),
('51', 'Châlons-en-Champagne', 45002, 'préfecture'),
('52', 'Chaumont', 22674, 'préfecture'),
('53', 'Laval', 50073, 'préfecture'),
('54', 'Nancy', 104321, 'préfecture'),
('55', 'Bar-le-Duc', 15668, 'préfecture'),
('56', 'Vannes', 53036, 'préfecture'),
('57', 'Metz', 117619, 'préfecture'),
('58', 'Nevers', 34485, 'préfecture'),
('59', 'Lille', 233897, 'préfecture'),
('60', 'Beauvais', 54738, 'préfecture'),
('61', 'Alençon', 26028, 'préfecture'),
('62', 'Arras', 40970, 'préfecture'),
('63', 'Clermont-Ferrand', 141365, 'préfecture'),
('64', 'Pau', 77489, 'préfecture'),
('65', 'Tarbes', 40900, 'préfecture'),
('66', 'Perpignan', 120605, 'préfecture'),
('67', 'Strasbourg', 276170, 'préfecture'),
('68', 'Colmar', 68784, 'préfecture'),
('69', 'Lyon', 506615, 'préfecture'),
('70', 'Vesoul', 15212, 'préfecture'),
('71', 'Mâcon', 33456, 'préfecture'),
('72', 'Le Mans', 143813, 'préfecture'),
('73', 'Chambéry', 59490, 'préfecture'),
('74', 'Annecy', 124401, 'préfecture'),
('75', 'Paris', 2220445, 'préfecture'),
('76', 'Rouen', 110618, 'préfecture'),
('77', 'Melun', 40011, 'préfecture'),
('78', 'Versailles', 85461, 'préfecture'),
('79', 'Niort', 58311, 'préfecture'),
('80', 'Amiens', 132479, 'préfecture'),
('81', 'Albi', 49531, 'préfecture'),
('82', 'Montauban', 58826, 'préfecture'),
('83', 'Toulon', 165584, 'préfecture'),
('84', 'Avignon', 92209, 'préfecture'),
('85', 'La Roche-sur-Yon', 53162, 'préfecture'),
('86', 'Poitiers', 87435, 'préfecture'),
('87', 'Limoges', 134577, 'préfecture'),
('88', 'Épinal', 32006, 'préfecture'),
('89', 'Auxerre', 34843, 'préfecture'),
('90', 'Belfort', 49764, 'préfecture'),
('91', 'Évry', 53699, 'préfecture'),
('92', 'Nanterre', 93509, 'préfecture'),
('93', 'Bobigny', 50479, 'préfecture'),
('94', 'Créteil', 91042, 'préfecture'),
('95', 'Cergy', 62979, 'préfecture'),
('971', 'Basse-Terre', 10787, 'préfecture'),
('972', 'Fort-de-France', 83651, 'préfecture'),
('973', 'Cayenne', 55817, 'préfecture'),
('974', 'Saint-Denis', 144642, 'préfecture'),
('976', 'Mamoudzou', 57281, 'préfecture'),
('1', 'Belley', 8983, 'sous-préfecture'),
('1', 'Gex', 11141, 'sous-préfecture'),
('1', 'Nantua', 3534, 'sous-préfecture'),
('2', 'Château-Thierry', 14546, 'sous-préfecture'),
('2', 'Saint-Quentin', 55878, 'sous-préfecture'),
('2', 'Soissons', 28290, 'sous-préfecture'),
('2', 'Vervins', 2501, 'sous-préfecture'),
('3', 'Montluçon', 37289, 'sous-préfecture'),
('3', 'Vichy', 25279, 'sous-préfecture'),
('4', 'Barcelonnette', 2698, 'sous-préfecture'),
('4', 'Castellane', 1541, 'sous-préfecture'),
('4', 'Forcalquier', 4910, 'sous-préfecture'),
('5', 'Briançon', 12392, 'sous-préfecture'),
('6', 'Grasse', 50409, 'sous-préfecture'),
('7', 'Largentière', 1734, 'sous-préfecture'),
('7', 'Tournon-sur-Rhône', 10558, 'sous-préfecture'),
('8', 'Rethel', 7778, 'sous-préfecture'),
('8', 'Sedan', 17829, 'sous-préfecture'),
('8', 'Vouziers', 4437, 'sous-préfecture'),
('9', 'Pamiers', 15518, 'sous-préfecture'),
('9', 'Saint-Girons', 6284, 'sous-préfecture'),
('10', 'Bar-sur-Aube', 5014, 'sous-préfecture'),
('10', 'Nogent-sur-Seine', 5955, 'sous-préfecture'),
('11', 'Limoux', 10275, 'sous-préfecture'),
('11', 'Narbonne', 52855, 'sous-préfecture'),
('12', 'Millau', 22064, 'sous-préfecture'),
('12', 'Villefranche-de-Rouergue', 11822, 'sous-préfecture'),
('13', 'Aix-en-Provence', 142149, 'sous-préfecture'),
('13', 'Arles', 52697, 'sous-préfecture'),
('13', 'Istres', 43463, 'sous-préfecture'),
('14', 'Bayeux', 13917, 'sous-préfecture'),
('14', 'Lisieux', 20881, 'sous-préfecture'),
('14', 'Vire Normandie', 17839, 'sous-préfecture'),
('15', 'Mauriac', 3682, 'sous-préfecture'),
('15', 'Saint-Flour', 6643, 'sous-préfecture'),
('16', 'Cognac', 18717, 'sous-préfecture'),
('16', 'Confolens', 2728, 'sous-préfecture'),
('17', 'Jonzac', 3447, 'sous-préfecture'),
('17', 'Rochefort', 24300, 'sous-préfecture'),
('17', 'Saintes', 25149, 'sous-préfecture'),
('17', 'Saint-Jean-d’Angély', 7123, 'sous-préfecture'),
('18', 'Saint-Amand-Montrond', 10161, 'sous-préfecture'),
('18', 'Vierzon', 27050, 'sous-préfecture'),
('19', 'Brive-la-Gaillarde', 46961, 'sous-préfecture'),
('19', 'Ussel', 9772, 'sous-préfecture'),
('2A', 'Sartène', 3363, 'sous-préfecture'),
('2B', 'Calvi', 5330, 'sous-préfecture'),
('2B', 'Corte', 7355, 'sous-préfecture'),
('21', 'Beaune', 21579, 'sous-préfecture'),
('21', 'Montbard', 5350, 'sous-préfecture'),
('22', 'Dinan', 10919, 'sous-préfecture'),
('22', 'Guingamp', 7003, 'sous-préfecture'),
('23', 'Lannion', 19869, 'sous-préfecture'),
('23', 'Aubusson', 3591, 'sous-préfecture'),
('24', 'Bergerac', 27764, 'sous-préfecture'),
('24', 'Nontron', 3151, 'sous-préfecture'),
('24', 'Sarlat-la-Canéda', 9127, 'sous-préfecture'),
('25', 'Montbéliard', 25521, 'sous-préfecture'),
('25', 'Pontarlier', 17413, 'sous-préfecture'),
('26', 'Die', 4516, 'sous-préfecture'),
('26', 'Nyons', 6641, 'sous-préfecture'),
('27', 'Bernay', 10435, 'sous-préfecture'),
('27', 'Les Andelys', 8186, 'sous-préfecture'),
('28', 'Châteaudun', 13264, 'sous-préfecture'),
('28', 'Dreux', 31191, 'sous-préfecture'),
('28', 'Nogent-le-Rotrou', 10130, 'sous-préfecture'),
('29', 'Brest', 139384, 'sous-préfecture'),
('29', 'Châteaulin', 5173, 'sous-préfecture'),
('29', 'Morlaix', 14837, 'sous-préfecture'),
('30', 'Alès', 39993, 'sous-préfecture'),
('30', 'Le Vigan', 3933, 'sous-préfecture'),
('31', 'Muret', 24975, 'sous-préfecture'),
('31', 'Saint-Gaudens', 11255, 'sous-préfecture'),
('32', 'Condom', 6835, 'sous-préfecture'),
('32', 'Mirande', 3527, 'sous-préfecture'),
('33', 'Arcachon', 10370, 'sous-préfecture'),
('33', 'Blaye', 4769, 'sous-préfecture'),
('33', 'Langon', 7396, 'sous-préfecture'),
('33', 'Lesparre-Médoc', 5604, 'sous-préfecture'),
('33', 'Libourne', 24595, 'sous-préfecture'),
('34', 'Béziers', 75701, 'sous-préfecture'),
('34', 'Lodève', 7381, 'sous-préfecture'),
('35', 'Fougères', 20189, 'sous-préfecture'),
('35', 'Redon', 8921, 'sous-préfecture'),
('35', 'Saint-Malo', 45980, 'sous-préfecture'),
('36', 'Issoudun', 12270, 'sous-préfecture'),
('36', 'La Châtre', 4278, 'sous-préfecture'),
('36', 'Le Blanc', 6602, 'sous-préfecture'),
('37', 'Chinon', 8073, 'sous-préfecture'),
('37', 'Loches', 6321, 'sous-préfecture'),
('38', 'La Tour-du-Pin', 7934, 'sous-préfecture'),
('38', 'Vienne', 29096, 'sous-préfecture'),
('39', 'Dole', 23312, 'sous-préfecture'),
('39', 'Saint-Claude', 10096, 'sous-préfecture'),
('40', 'Dax', 20485, 'sous-préfecture'),
('41', 'Romorantin-Lanthenay', 17459, 'sous-préfecture'),
('41', 'Vendôme', 16879, 'sous-préfecture'),
('42', 'Montbrison', 15689, 'sous-préfecture'),
('42', 'Roanne', 35200, 'sous-préfecture'),
('43', 'Brioude', 6700, 'sous-préfecture'),
('43', 'Yssingeaux', 7105, 'sous-préfecture'),
('44', 'Châteaubriant', 11895, 'sous-préfecture'),
('44', 'Saint-Nazaire', 69350, 'sous-préfecture'),
('45', 'Montargis', 13997, 'sous-préfecture'),
('45', 'Pithiviers', 9054, 'sous-préfecture'),
('46', 'Figeac', 9820, 'sous-préfecture'),
('46', 'Gourdon', 4297, 'sous-préfecture'),
('47', 'Marmande', 17748, 'sous-préfecture'),
('47', 'Nérac', 7085, 'sous-préfecture'),
('47', 'Villeneuve-sur-Lot', 23263, 'sous-préfecture'),
('48', 'Florac-Trois-Rivières', 2107, 'sous-préfecture'),
('49', 'Cholet', 53853, 'sous-préfecture'),
('49', 'Saumur', 27301, 'sous-préfecture'),
('49', 'Segré-en-Anjou Bleu', 17580, 'sous-préfecture'),
('50', 'Avranches', 7813, 'sous-préfecture'),
('50', 'Cherbourg-en-Cotentin', 80959, 'sous-préfecture'),
('50', 'Coutances', 8789, 'sous-préfecture'),
('51', 'Épernay', 23176, 'sous-préfecture'),
('51', 'Reims', 183042, 'sous-préfecture'),
('51', 'Vitry-le-François', 13144, 'sous-préfecture'),
('52', 'Langres', 7850, 'sous-préfecture'),
('52', 'Saint-Dizier', 25505, 'sous-préfecture'),
('53', 'Château-Gontier', 11528, 'sous-préfecture'),
('53', 'Mayenne', 13139, 'sous-préfecture'),
('54', 'Lunéville', 19325, 'sous-préfecture'),
('54', 'Toul', 15966, 'sous-préfecture'),
('54', 'Val de Briey', 8210, 'sous-préfecture'),
('55', 'Commercy', 5914, 'sous-préfecture'),
('55', 'Verdun', 18393, 'sous-préfecture'),
('56', 'Lorient', 57662, 'sous-préfecture'),
('56', 'Pontivy', 13965, 'sous-préfecture'),
('57', 'Forbach', 21740, 'sous-préfecture'),
('57', 'Sarrebourg', 12363, 'sous-préfecture'),
('57', 'Sarreguemines', 21457, 'sous-préfecture'),
('57', 'Thionville', 41083, 'sous-préfecture'),
('58', 'Château-Chinon (Ville)', 2084, 'sous-préfecture'),
('58', 'Clamecy', 3889, 'sous-préfecture'),
('58', 'Cosne-Cours-sur-Loire', 10553, 'sous-préfecture'),
('59', 'Avesnes-sur-Helpe', 4662, 'sous-préfecture'),
('59', 'Cambrai', 32897, 'sous-préfecture'),
('59', 'Douai', 40736, 'sous-préfecture'),
('59', 'Dunkerque', 89160, 'sous-préfecture'),
('59', 'Valenciennes', 43787, 'sous-préfecture'),
('60', 'Clermont', 10502, 'sous-préfecture'),
('60', 'Compiègne', 40732, 'sous-préfecture'),
('60', 'Senlis', 15292, 'sous-préfecture'),
('61', 'Argentan', 13968, 'sous-préfecture'),
('61', 'Mortagne-au-Perche', 3994, 'sous-préfecture'),
('62', 'Béthune', 25413, 'sous-préfecture'),
('62', 'Boulogne-sur-Mer', 42476, 'sous-préfecture'),
('62', 'Calais', 76402, 'sous-préfecture'),
('62', 'Lens', 31398, 'sous-préfecture'),
('62', 'Montreuil', 2132, 'sous-préfecture'),
('62', 'Saint-Omer', 14164, 'sous-préfecture'),
('63', 'Ambert', 6794, 'sous-préfecture'),
('63', 'Issoire', 14578, 'sous-préfecture'),
('63', 'Riom', 18749, 'sous-préfecture'),
('63', 'Thiers', 11588, 'sous-préfecture'),
('64', 'Bayonne', 48178, 'sous-préfecture'),
('64', 'Oloron-Sainte-Marie', 10824, 'sous-préfecture'),
('65', 'Argelès-Gazost', 3020, 'sous-préfecture'),
('65', 'Bagnères-de-Bigorre', 7602, 'sous-préfecture'),
('66', 'Céret', 7663, 'sous-préfecture'),
('66', 'Prades', 5927, 'sous-préfecture'),
('67', 'Haguenau', 34761, 'sous-préfecture'),
('67', 'Molsheim', 9263, 'sous-préfecture'),
('67', 'Saverne', 11433, 'sous-préfecture'),
('67', 'Sélestat', 19546, 'sous-préfecture'),
('68', 'Altkirch', 5738, 'sous-préfecture'),
('68', 'Mulhouse', 111167, 'sous-préfecture'),
('68', 'Thann', 7915, 'sous-préfecture'),
('69', 'Villefranche-sur-Saône', 36559, 'sous-préfecture'),
('70', 'Lure', 8324, 'sous-préfecture'),
('71', 'Autun', 13955, 'sous-préfecture'),
('71', 'Chalon-sur-Saône', 44985, 'sous-préfecture'),
('71', 'Charolles', 2757, 'sous-préfecture'),
('71', 'Louhans', 6349, 'sous-préfecture'),
('72', 'La Flèche', 15025, 'sous-préfecture'),
('72', 'Mamers', 5333, 'sous-préfecture'),
('73', 'Albertville', 18950, 'sous-préfecture'),
('73', 'Saint-Jean-de-Maurienne', 7889, 'sous-préfecture'),
('74', 'Bonneville', 12575, 'sous-préfecture'),
('74', 'Saint-Julien-en-Genevois', 13253, 'sous-préfecture'),
('74', 'Thonon-les-Bains', 34973, 'sous-préfecture'),
('76', 'Dieppe', 30086, 'sous-préfecture'),
('76', 'Le Havre', 172807, 'sous-préfecture'),
('77', 'Fontainebleau', 14637, 'sous-préfecture'),
('77', 'Meaux', 53526, 'sous-préfecture'),
('77', 'Provins', 11736, 'sous-préfecture'),
('77', 'Torcy', 23609, 'sous-préfecture'),
('78', 'Mantes-la-Jolie', 44985, 'sous-préfecture'),
('78', 'Rambouillet', 25755, 'sous-préfecture'),
('78', 'Saint-Germain-en-Laye', 39540, 'sous-préfecture'),
('79', 'Bressuire', 19300, 'sous-préfecture'),
('79', 'Parthenay', 10367, 'sous-préfecture'),
('80', 'Abbeville', 23559, 'sous-préfecture'),
('80', 'Montdidier', 6195, 'sous-préfecture'),
('80', 'Péronne', 7676, 'sous-préfecture'),
('81', 'Castres', 41382, 'sous-préfecture'),
('82', 'Castelsarrasin', 13765, 'sous-préfecture'),
('83', 'Brignoles', 16690, 'sous-préfecture'),
('83', 'Draguignan', 40054, 'sous-préfecture'),
('84', 'Apt', 11885, 'sous-préfecture'),
('84', 'Carpentras', 28447, 'sous-préfecture'),
('85', 'Fontenay-le-Comte', 13609, 'sous-préfecture'),
('85', 'Les Sables-d’Olonne', 14376, 'sous-préfecture'),
('86', 'Châtellerault', 31722, 'sous-préfecture'),
('86', 'Montmorillon', 6155, 'sous-préfecture'),
('87', 'Bellac', 4117, 'sous-préfecture'),
('87', 'Rochechouart', 3798, 'sous-préfecture'),
('88', 'Neufchâteau', 6577, 'sous-préfecture'),
('88', 'Saint-Dié-des-Vosges', 20315, 'sous-préfecture'),
('89', 'Avallon', 7025, 'sous-préfecture'),
('89', 'Sens', 25507, 'sous-préfecture'),
('91', 'Étampes', 24503, 'sous-préfecture'),
('91', 'Palaiseau', 32461, 'sous-préfecture'),
('92', 'Antony', 61603, 'sous-préfecture'),
('92', 'Boulogne-Billancourt', 116927, 'sous-préfecture'),
('93', 'Le Raincy', 14400, 'sous-préfecture'),
('93', 'Saint-Denis', 110733, 'sous-préfecture'),
('94', 'L’Haÿ-les-Roses', 30772, 'sous-préfecture'),
('94', 'Nogent-sur-Marne', 31292, 'sous-préfecture'),
('95', 'Argenteuil', 108865, 'sous-préfecture'),
('95', 'Pontoise', 29766, 'sous-préfecture'),
('95', 'Sarcelles', 56828, 'sous-préfecture'),
('971', 'Pointe-à-Pitre', 16261, 'sous-préfecture'),
('972', 'La Trinité', 12973, 'sous-préfecture'),
('972', 'Le Marin', 8883, 'sous-préfecture'),
('972', 'Saint-Pierre', 4229, 'sous-préfecture'),
('973', 'Saint-Laurent-du-Maroni', 44169, 'sous-préfecture'),
('974', 'Saint-Benoît', 37738, 'sous-préfecture'),
('974', 'Saint-Paul', 104634, 'sous-préfecture'),
('974', 'Saint-Pierre', 81583, 'sous-préfecture');
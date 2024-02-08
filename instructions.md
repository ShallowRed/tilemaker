# Qualité connue (en trait vert continu) 
- highway=path
- highway=track
- cycleway=track

## Avec les propriétés :
- smoothness=excellent
- smoothness=good
- tracktype=grade1
- tracktype=grade2
- tracktype=grade3

- mtb:scale=0
- mtb:scale=1 
- mtb:scale:uphill=0

- surface=compacted
- surface=fine_gravel

- bicycle=yes ?
- bicycle=designated ?

# Qualité inconnue ( en trait vert discontinu) 
- highway=unclassified 

# Et globalement les highway=path et highway=track qui n’ont aucun autre tag au dessus. 

# Ne pas mettre en valeur 
surface=sand
surface=mud

# Afficher assez tot dans le zoom le bati pour qu'on aperçoive les hameaux, bati isolés etc.

# Afficher les routes en blancs.

# Peut-être les pistes cyclables en vert foncé/classique
# mais il ne doivent pas paraitre plus important que nos chemins

# NICE-TO-HAVE
- Une petite bulle d'info qui afficherait les tags de nos voies vertes et (hover ou clic)
- Ou afficher les tags de la voie en typo sur la voie dans les derniers gros niveaux de zooms.

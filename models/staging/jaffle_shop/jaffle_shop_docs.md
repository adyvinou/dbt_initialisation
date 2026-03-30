{% docs status %}

colonne picklist de la table orders dont les valeurs des status et leur définition sont les suivantes : 

| statut | définition |
|----------------|--------------------------------------------------|
| passée == placed  | Commande passée, pas encore expédiée |
| expédiée == shipped | Commande expédiée, pas encore livrée |
| terminée == completed | Commande reçue par le client |
| retour en cours == return_pending | Le client a indiqué vouloir retourner cet article |
| retournée == returned | Article retourné |

{% enddocs %}
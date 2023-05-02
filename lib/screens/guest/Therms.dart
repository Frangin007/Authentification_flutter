import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  const TermScreen({super.key});
  
  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  bool _termsRead = false;
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
    if (_scrollController.offset >=
          _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange ){
            setState(() => _termsRead =true);
          }
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed:(){}, 
           ),
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor:Theme.of(context).scaffoldBackgroundColor,
          title: Text('Terms and Conditions',
          style: TextStyle(color: Colors.black),
          ),
      
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            bottom: 20.0,
            right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             Expanded(child: SingleChildScrollView(
              controller: _scrollController,
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(" Jour ouvrable «  signifie un jour (autre qu’un samedi, un dimanche ou un jour férié) où les banques aux Pays-Bas sont ouvertes aux affaires.« Client «  désigne la personne ou l’entreprise \n qui achète ou acquiert autrement les Données de la Société.\n « Date d’entrée en vigueur «  a le sens défini à l’article 2.2\n « Société «  signifie Sample Solutions B.V. enregistrée aux Pays-Bas, Stationsplein 45, 3013AK, Zuid Holland, Pays-Bas, numéro d’entreprise KvK 64893081\n » Données «  signifie les données figurant dans la Confirmation de Commande, comprenant des informations de toute nature, qu’il s’agisse de mots, chiffres, graphiques ou autrement, sous toute autre forme et que celles-ci appartiennent à la Société ou à un tiers, fournies au Client par la Société ou rendues accessibles à celui-ci.\n« Date de livraison «  désigne la date à laquelle la Société fournit les Données au Client. « événement de force majeure  » a le sens qui lui est donné à l’article 12.1.\n« Droits de propriété intellectuelle » signifie tous les brevets, droits sur les inventions, les modèles d’utilité, les droits d’auteur et droits connexes, les marques de commerce, les marques de service, les noms commerciaux, les noms commerciaux et les noms de domaine, les droits relatifs à la tenue vestimentaire, les droits de commerce ou les droits de poursuite en contrefaçon, les droits de concurrence déloyale, les droits sur les dessins, les logiciels informatiques et les droits de base de données, les droits de topographie, les droits moraux, les droits sur les informations confidentielles (y compris le savoir-faire et les secrets commerciaux) et tous les autres droits de propriété intellectuelle, qu’ils soient enregistrés ou non, y compris toutes les demandes, renouvellements ou extensions de ces droits, et tous les droits similaires ou équivalents ou formes de protection dans toute partie du monde.\n« Licence » signifie la licence entre la Société et le Client pour l’utilisation des Données incorporant les présentes Conditions.\n« Période d’autorisation «  a le sens qui lui est donné à l’alinéa 3.2(a).\n« Confirmation de commande «  signifie l’acceptation écrite par le Client du devis de la Société tel qu’il figure au verso.\n« Date de Paiement «  a le sens qui lui est donné à l’alinéa 5.2(b).\n\n« Prix «  désigne les frais payables par le Client pour la fourniture des Données conformément à l’article 5 ;\n» Destinataire «  désigne toute personne dont les coordonnées font l’objet des Données.\n« Termes » signifie ces termes et conditions tels que modifiés de temps à autre conformément à la clause 13.7.\nDans les présentes conditions, les règles suivantes s’appliquent :\na)une personne comprend une personne physique, morale ou non (qu’elle ait ou non une personnalité juridique distincte) ;\nb) une référence à une partie comprend ses représentants personnels, ses successeurs ou ses ayants droit autorisés ;\nc) une référence à une loi ou une disposition législative est une référence à cette loi ou disposition législative modifiée ou adoptée de nouveau. Un renvoi à une loi ou à une disposition législative comprend toute loi subordonnée adoptée en vertu de cette loi ou disposition législative, telle qu’elle a été modifiée ou édictée ;\nd) toute expression introduite par les termes, y compris, en particulier, inclure ou toute expression semblable, doit être interprétée comme une illustration et ne doit pas limiter le sens des termes précédant ces termes ; et\ne) une référence à un écrit ou à un écrit comprend les fax et les courriers électroniques.\n\n2. LA BASE DE LICENCE\n2.1 La Confirmation de Commande constitue une offre de la Société de vendre les Données conformément aux présentes Conditions. Le Client est responsable de s’assurer que les termes de la Confirmation de Commande sont complets et exacts.\n2.2. La Confirmation de commande ne sera réputée acceptée par le Client que lorsqu’il aura signé et daté la Confirmation de commande et qu’il l’aura retournée à la Société, date à laquelle la Licence prendra naissance (Date de début).\n2.3. La licence constitue l’intégralité de l’accord entre les parties. Le Client reconnaît qu’il ne s’est pas fondé sur des déclarations, promesses ou déclarations faites ou données par la Société ou en son nom qui ne sont pas énoncées dans la Licence.\n2.4 Les présentes Conditions s’appliquent à la Licence à l’exclusion de toutes autres conditions que le Client cherche à imposer ou à incorporer, ou qui sont implicites dans le commerce, les usages, les pratiques ou le cours des affaires.\n2.5 Toute demande répétée ou ultérieure du Client pour une licence d’utilisation des Données sera soumise aux présentes Conditions. Afin d’éviter tout doute, une Licence distincte sera créée pour chaque Confirmation de Commande relative aux Données qui est acceptée par le Client conformément à la clause 2.2.\n2.6 Tout devis donné par la Société ne constitue pas une offre et n’est valable que pour une période de 30 jours ouvrables à compter de sa date d’émission.\n2.7 La quantité et la description des Données seront telles que décrites dans la Confirmation de commande."),
        
              ]),),),
           
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: !_termsRead 
              ? null
              :(){

              },
              child: Text("Read & Accept".toUpperCase()),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                )
              ),
            ),
            ],
          ),
        )
        ),
        );
  }
}
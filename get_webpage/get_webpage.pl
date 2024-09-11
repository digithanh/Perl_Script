#!/usr/bin/env perl

# Importer les modules nécessaires
use strict;
use warnings;
use feature 'say';
use LWP::UserAgent;
use open qw(:std :utf8);

# Fonction pour récupérer le contenu d'une page web
sub get_page_content {
    # Paramètre de la fonction
    my ($url) = @_;
    
    # Créer un objet UserAgent
    my $ua = LWP::UserAgent->new();
    
    # Définir les en-têtes par défaut
    $ua->default_headers()->header(
        'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
        'Accept-Language' => 'fr,en-US;q=0.7,en;q=0.3'
    );
    
    # Créer une requête HTTP GET
    my $request = new HTTP::Request('GET', $url);

    # Envoyer la requête et obtenir la réponse
    my $response = $ua->request($request);

    # Vérifier si la requête a réussi
    unless($response->is_success()) {
        say "Erreur :", $response->status_line();
        return undef;
    }

    # Récupérer et retourner le contenu décodé
    return $response->decoded_content();
}

# Vérifier si un argument est fourni
if (@ARGV !=1) {
    say "Usage: $0 <URL>";
    exit 1;
}

# Obtenir l'URL à traiter
my $url = shift @ARGV;

# Appeler la fonction pour récupérer le contenu
my $content = get_page_content($url);

# Si le contenu est défini
if (defined $content) {  
    # Configurer STDOUT pour utiliser UTF-8
    # binmode(STDOUT, ":encoding(UTF-8)");

    # Afficher le contenu
    say $content;
    say "Page récupérée avec succès.";
}
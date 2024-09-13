#!/usr/bin/env perl

# Importer les modules nécessaires
use strict;
use warnings;
use LWP::UserAgent;
use IO::Socket::SSL;

# Fonction pour télécharger une image
sub get_image {
    my($link, $image) = @_;

    # Créer un objet UserAgent
    my $ua = LWP::UserAgent->new();

    # Configurer les options SSL
    $ua->ssl_opts(
        'SSl_verify_mode' => IO::Socket::SSL::SSL_VERIFY_NONE,
        'verify_hostname' => 0
    );

    # Télécharger l'image
    my $response = $ua->mirror($link, $image);
    
    # Vérifier si la requête a réussi
    unless($response->is_success()) {
        die $response->status_line();
    }

    print("`nCompleted\n");
}

# Vérifier que deux arguments ont été fournis
if (@ARGV != 2 ) {
    print <<USAGE;
    
    Usage $0 <LINK> <Name local Image>\n
    example :
        perl get_webimage.pl 'https://i.etsystatic.com/42813710/r/il/0f9f8c/5604298935/il_fullxfull.5604298935_i5n0.jpg' 'pika.jpg' 
    
USAGE
    exit 1;
}

# Récupérer les arguments
my $link = shift @ARGV;
my $image = shift @ARGV;

# Appeler la fonction get_image avec les arguments
get_image($link, $image);
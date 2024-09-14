#!/usr/bin/env perl

# Importer les modules nécessaires
use strict;
use warnings;
use feature "say";
use Data::Dumper;

$|=1;

# Fonction pour vérifier si un fichier existe et appeler la fonction match_word
sub check_file {
    my ($file, $word) = @_;

    if ( -f $file ) {
        match_word($file, $word);
    } else {
        say "File not found: $file";
    }
}

# Fonction pour rechercher une mot dans un fichier
sub match_word {
    my ($file, $word) = @_;

    open(my $fh, '<', $file) or die("Input file $file not found.\n");

    while (my $line = <$fh>) {
        if ($line =~ /$word/i) {
            say $line;
        }
    }

    close($fh);
}

# Fonction principale qui gère l'argument de commande
sub main {
    if (@ARGV != 2) {
        say <<USAGE;
Usage: $0 <PATH> "word"
example:
    perl regex_file.pl /var/log/messages "ERROR"
USAGE
        exit 1;
    }

    my $path = shift @ARGV;
    my $word = shift @ARGV;
    check_file($path, $word);
}

main();
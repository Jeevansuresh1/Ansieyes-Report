add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
add_cus_dep('sym2', 'sym1', 0, 'run_makeglossaries');

sub run_makeglossaries {
    my ($base_name, $path) = fileparse( $$Psource );
    pushd $path;
    if ( $silent ) {
        my $return = system("makeglossaries -q '$base_name'");
    } else {
        my $return = system("makeglossaries '$base_name'");
    };
    popd;
    return 0;
}

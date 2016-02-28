use swat::app;
use JSON;
start_app();

set_response_processor(sub{

    my $hdr = shift;
    my $bd  = shift;

    my $data = decode_json($bd);
    
    $hdr."\n".
    ('first name: ').($data->{data}->[0]->{name})."\n".
    ('second name: ').($data->{data}->[1]->{name})."\n"

});

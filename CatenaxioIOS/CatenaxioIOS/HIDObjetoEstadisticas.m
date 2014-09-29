//
//  HIDObjetoEstadisticas.m
//  CatenaxioIOS
//
//  Created by Hugo Izquierdo on 9/28/14.
//  Copyright (c) 2014 Hugo Izquierdo. All rights reserved.
//

#import "HIDObjetoEstadisticas.h"

@implementation HIDObjetoEstadisticas

-(id) initWithJugador:(UIImage *) Jugador
          withTotales:(NSString *) PartidosTotales
          withJugados:(NSString *) PartidosJugados
          withGanados:(NSString *) PartidosGanados
            withGoles:(NSString *) Goles
       withPorcentaje:(NSString *) Porcentaje
       withAsistencia:(NSString *) Asistencia


{
    
    if(self=[super init]){
        _jugador2=Jugador;
        _totales2=PartidosTotales;
        _jugados2=PartidosJugados;
        _ganados2=PartidosGanados;
        _goles2=Goles;
        _porcentaje2=Porcentaje;
        _asistencia2=Asistencia;
        
    }
    return self;
}

@end

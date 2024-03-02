import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MoviesModule } from './movies/movies.module';
import { CloudinaryModule } from './–no-spec/cloudinary/cloudinary.module';
import { TheaterModule } from './theater/theater.module';
import { BookingModule } from './booking/booking.module';
import { BookingModule } from './booking/booking.module';
import { AuthModule } from './auth/auth.module';
import { CloudinaryModule } from './cloudinary/cloudinary.module';
import { CloudinaryModule } from './–no-spec/cloudinary/cloudinary.module';

@Module({
  imports: [MoviesModule, CloudinaryModule, AuthModule, BookingModule, TheaterModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}

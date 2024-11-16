import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  count = 0;

  getHello(): string {
    this.count += 1;
    console.log(`приложение отработало ${this.count}!`);
    return 'Hello World Ха-Ха!';
  }
}

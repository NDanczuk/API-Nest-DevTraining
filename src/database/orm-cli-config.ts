import { DataSource } from 'typeorm';
import { dataSourceOptions } from './database.module';
import { CreateCoursesTable1723052246462 } from 'src/migrations/1723052246462-CreateCoursesTable';
import { CreateTagsTable1723054244829 } from 'src/migrations/1723054244829-CreateTagsTable';
import { CreateCoursesTagsTable1723055532646 } from 'src/migrations/1723055532646-CreateCoursesTagsTable';

export const dataSource = new DataSource({
  ...dataSourceOptions,
  synchronize: false,
  migrations: [
    CreateCoursesTable1723052246462,
    CreateTagsTable1723054244829,
    CreateCoursesTagsTable1723055532646,
  ],
});

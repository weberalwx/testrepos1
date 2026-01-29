# Как загрузить обновлённую игру на GitHub (с фоном и всеми файлами)

## Шаг 1. Создать репозиторий на GitHub

1. Зайдите на [github.com](https://github.com) и войдите в аккаунт.
2. Нажмите **«+»** → **«New repository»** (или перейдите по [github.com/new](https://github.com/new)).
3. Укажите:
   - **Repository name:** например `minesweeper` или `saper`
   - **Public**
   - **НЕ** ставьте галочку «Add a README» (репозиторий должен быть пустым).
4. Нажмите **«Create repository»**.
5. Скопируйте URL репозитория — он будет вида:  
   `https://github.com/ВАШ_ЛОГИН/minesweeper.git`

---

## Шаг 2. Настроить Git (один раз на компьютере)

Если вы ещё ни разу не делали коммиты на этом компьютере, укажите имя и email для GitHub:

```powershell
git config --global user.email "ваш@email.com"
git config --global user.name "Ваше Имя или логин GitHub"
```

(Подставьте свой email и имя — они будут видны в истории коммитов.)

---

## Шаг 3. Открыть папку игры в терминале и выполнить команды

Откройте **PowerShell** или **Командную строку** и перейдите в папку игры:

```powershell
cd C:\Users\gusev\Desktop\minesweeper
```

Git уже инициализирован, файлы добавлены. Дальше выполните по очереди (подставьте свой URL из шага 1):

```powershell
git add .
git commit -m "Сапёр: обновлённый дизайн, фон, Z вместо бомб"
git branch -M main
git remote add origin https://github.com/ВАШ_ЛОГИН/minesweeper.git
git push -u origin main
```

**Важно:** замените `ВАШ_ЛОГИН/minesweeper` на ваш логин и имя репозитория из шага 1.

При первом `git push` GitHub может попросить войти (логин и пароль или токен). Если используете пароль — с 2021 года нужен **Personal Access Token**: GitHub → Settings → Developer settings → Personal access tokens → создать токен с правом `repo`.

---

## Шаг 4. Включить GitHub Pages (чтобы игра открывалась по ссылке)

1. На странице репозитория на GitHub: **Settings** → **Pages**.
2. В разделе **Source** выберите ветку **main** и папку **/ (root)**.
3. Нажмите **Save**.

Через 1–2 минуты игра будет доступна по адресу:

**https://ВАШ_ЛОГИН.github.io/minesweeper/**

(подставьте свой логин и имя репозитория). Фон (background.png) и все обновления будут загружаться оттуда.

---

## Если репозиторий уже был создан раньше

Если папка уже связана с GitHub (вы раньше делали `git init` и `git remote add`), достаточно обновить файлы и отправить изменения:

```powershell
cd C:\Users\gusev\Desktop\minesweeper
git add .
git commit -m "Обновление: новый фон, дизайн, Z вместо бомб"
git push
```

После этого на GitHub будет новая версия с фоном и всеми изменениями.

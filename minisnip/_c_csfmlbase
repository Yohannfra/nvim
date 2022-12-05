// compile with :
// -lcsfml-system -lcsfml-graphics -lcsfml-window  -lcsfml-audio

#include <SFML/Graphics.h>
#include <SFML/System.h>
#include <SFML/System/Export.h>

sfRenderWindow *create_my_window()
{
    sfRenderWindow *win;
    sfVideoMode mode = {1440, 900, 32};

    win = sfRenderWindow_create(mode, "My hunter", sfResize | sfClose, NULL);
    return win;
}

int main(void)
{
    sfEvent event;
    sfRenderWindow *win = create_my_window();

    while (sfRenderWindow_isOpen(win)) {
        while (sfRenderWindow_pollEvent(win, &event)) {
            if (event.type == sfEvtClosed || sfKeyboard_isKeyPressed(sfKeyEscape))
                sfRenderWindow_close(win);
        }
        sfRenderWindow_clear(win, sfBlack);
        sfRenderWindow_display(win);
        sfSleep(sfMicroseconds(1));
    }
}

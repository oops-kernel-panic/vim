/* highlight.c */
void init_highlight(int both, int reset);
int load_colors(char_u *name);
int lookup_color(int idx, int foreground, int *boldp);
void do_highlight(char_u *line, int forceit, int init);
void free_highlight(void);
void restore_cterm_colors(void);
void set_normal_colors(void);
char_u *hl_get_font_name(void);
void hl_set_font_name(char_u *font_name);
void hl_set_bg_color_name(char_u *name);
void hl_set_fg_color_name(char_u *name);
guicolor_T color_name2handle(char_u *name);
int get_cterm_attr_idx(int attr, int fg, int bg);
int get_tgc_attr_idx(int attr, guicolor_T fg, guicolor_T bg);
int get_gui_attr_idx(int attr, guicolor_T fg, guicolor_T bg);
void clear_hl_tables(void);
int hl_combine_attr(int char_attr, int prim_attr);
attrentry_T *syn_gui_attr2entry(int attr);
int syn_attr2attr(int attr);
attrentry_T *syn_term_attr2entry(int attr);
attrentry_T *syn_cterm_attr2entry(int attr);
char_u *highlight_has_attr(int id, int flag, int modec);
char_u *highlight_color(int id, char_u *what, int modec);
long_u highlight_gui_color_rgb(int id, int fg);
int syn_list_header(int did_header, int	outlen, int id);
int syn_name2id(char_u *name);
int syn_name2attr(char_u *name);
int highlight_exists(char_u *name);
char_u *syn_id2name(int id);
int syn_namen2id(char_u *linep, int len);
int syn_check_group(char_u *pp, int len);
int syn_id2attr(int hl_id);
int syn_id2colors(int hl_id, guicolor_T *fgp, guicolor_T *bgp);
void syn_id2cterm_bg(int hl_id, int *fgp, int *bgp);
int syn_get_final_id(int hl_id);
void highlight_gui_started(void);
int highlight_changed(void);
void set_context_in_highlight_cmd(expand_T *xp, char_u *arg);
char_u *get_highlight_name(expand_T *xp, int idx);
char_u *get_highlight_name_ext(expand_T *xp, int idx, int skip_cleared);
void free_highlight_fonts(void);
/* vim: set ft=c : */

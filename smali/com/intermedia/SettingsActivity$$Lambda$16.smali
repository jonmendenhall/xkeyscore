.class final synthetic Lcom/intermedia/SettingsActivity$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/SettingsActivity$$Lambda$16;->arg$1:Lcom/intermedia/SettingsActivity;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity$$Lambda$16;->arg$1:Lcom/intermedia/SettingsActivity;

    invoke-virtual {v0, p1}, Lcom/intermedia/SettingsActivity;->lambda$showAvatarMenu$6$SettingsActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

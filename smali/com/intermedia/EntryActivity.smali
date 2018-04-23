.class public final Lcom/intermedia/EntryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "EntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/user/session/SessionManager;->isUserLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/intermedia/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/intermedia/login/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v0, 0x10000

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, p1}, Lcom/intermedia/EntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lcom/intermedia/EntryActivity;->finish()V

    return-void
.end method

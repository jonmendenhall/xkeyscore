.class public Lcom/intermedia/game/GameModalPresenter_ViewBinding;
.super Ljava/lang/Object;
.source "GameModalPresenter_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/intermedia/game/GameModalPresenter;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1100ad

    .line 28
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/game/GameModalPresenter;->congratulations:Ljava/lang/String;

    const v0, 0x7f1101b0

    .line 29
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/game/GameModalPresenter;->zeroDollars:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/game/GameModalPresenter;Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/intermedia/game/GameModalPresenter_ViewBinding;-><init>(Lcom/intermedia/game/GameModalPresenter;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

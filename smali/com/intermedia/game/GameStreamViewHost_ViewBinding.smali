.class public Lcom/intermedia/game/GameStreamViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "GameStreamViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/game/GameStreamViewHost;


# direct methods
.method public constructor <init>(Lcom/intermedia/game/GameStreamViewHost;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/game/GameStreamViewHost_ViewBinding;->target:Lcom/intermedia/game/GameStreamViewHost;

    const-string v0, "field \'streamLoadingIndicator\'"

    .line 23
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a01b1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/game/GameStreamViewHost;->streamLoadingIndicator:Landroid/widget/ProgressBar;

    const-string v0, "field \'videoSurface\'"

    .line 24
    const-class v1, Landroid/view/SurfaceView;

    const v2, 0x7f0a00c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p1, Lcom/intermedia/game/GameStreamViewHost;->videoSurface:Landroid/view/SurfaceView;

    const-string v0, "field \'fpsLabel\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a00c6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/intermedia/game/GameStreamViewHost;->fpsLabel:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/intermedia/game/GameStreamViewHost_ViewBinding;->target:Lcom/intermedia/game/GameStreamViewHost;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/intermedia/game/GameStreamViewHost_ViewBinding;->target:Lcom/intermedia/game/GameStreamViewHost;

    .line 35
    iput-object v1, v0, Lcom/intermedia/game/GameStreamViewHost;->streamLoadingIndicator:Landroid/widget/ProgressBar;

    .line 36
    iput-object v1, v0, Lcom/intermedia/game/GameStreamViewHost;->videoSurface:Landroid/view/SurfaceView;

    .line 37
    iput-object v1, v0, Lcom/intermedia/game/GameStreamViewHost;->fpsLabel:Landroid/widget/TextView;

    return-void
.end method

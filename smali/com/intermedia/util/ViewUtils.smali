.class public final Lcom/intermedia/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$setGone$0$ViewUtils(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/intermedia/util/ViewUtils;->setGone(Landroid/view/View;Z)V

    return-void
.end method

.method static final synthetic lambda$setInvisible$1$ViewUtils(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/intermedia/util/ViewUtils;->setInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public static setGone(Landroid/view/View;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/intermedia/util/ViewUtils$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/util/ViewUtils$$Lambda$0;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private static setGone(Landroid/view/View;Z)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static setInvisible(Landroid/view/View;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/intermedia/util/ViewUtils$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/util/ViewUtils$$Lambda$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private static setInvisible(Landroid/view/View;Z)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

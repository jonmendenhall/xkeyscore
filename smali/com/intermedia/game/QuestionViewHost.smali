.class public Lcom/intermedia/game/QuestionViewHost;
.super Ljava/lang/Object;
.source "QuestionViewHost.java"


# instance fields
.field public final questionView:Lcom/intermedia/view/QuestionView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final videoOverlay:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0151

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/intermedia/view/QuestionView;

    iput-object p1, p0, Lcom/intermedia/game/QuestionViewHost;->questionView:Lcom/intermedia/view/QuestionView;

    .line 17
    iput-object p2, p0, Lcom/intermedia/game/QuestionViewHost;->videoOverlay:Landroid/widget/ImageView;

    return-void
.end method

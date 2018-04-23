.class final synthetic Lcom/intermedia/ChatPresenter$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final arg$1:Lcom/intermedia/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/ChatPresenter$$Lambda$8;->arg$1:Lcom/intermedia/ChatPresenter;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/ChatPresenter$$Lambda$8;->arg$1:Lcom/intermedia/ChatPresenter;

    invoke-virtual {v0, p1}, Lcom/intermedia/ChatPresenter;->lambda$showChatInput$7$ChatPresenter(Landroid/animation/ValueAnimator;)V

    return-void
.end method

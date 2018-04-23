.class Lcom/intermedia/chat/FastItemAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/chat/FastItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/chat/FastItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/intermedia/chat/FastItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iput-object p2, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$deltaX:I

    iput-object p4, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$deltaY:I

    iput-object p6, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 296
    iget p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 299
    :cond_0
    iget p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$deltaY:I

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 307
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/intermedia/chat/FastItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 308
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$300(Lcom/intermedia/chat/FastItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$100(Lcom/intermedia/chat/FastItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$3;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$3;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/intermedia/chat/FastItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

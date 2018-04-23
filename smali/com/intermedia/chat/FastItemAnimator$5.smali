.class Lcom/intermedia/chat/FastItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/chat/FastItemAnimator;->animateChangeImpl(Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/chat/FastItemAnimator;

.field final synthetic val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/intermedia/chat/FastItemAnimator;Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iput-object p2, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 391
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 392
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 393
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 394
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 395
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/chat/FastItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 396
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$400(Lcom/intermedia/chat/FastItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 397
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$100(Lcom/intermedia/chat/FastItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 386
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$5;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$5;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/chat/FastItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

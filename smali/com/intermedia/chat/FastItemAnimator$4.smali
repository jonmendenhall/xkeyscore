.class Lcom/intermedia/chat/FastItemAnimator$4;
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

.field final synthetic val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/intermedia/chat/FastItemAnimator;Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iput-object p2, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 369
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 370
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 371
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 372
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 373
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/chat/FastItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 374
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$400(Lcom/intermedia/chat/FastItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 375
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$100(Lcom/intermedia/chat/FastItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 364
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$4;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$4;->val$changeInfo:Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/intermedia/chat/FastItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/intermedia/chat/FastItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.class final Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "RxSwipeRefreshLayout.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout;->refreshing(Landroid/support/v4/widget/SwipeRefreshLayout;)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout$1;->val$view:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout$1;->val$view:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method

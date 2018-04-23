.class final Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager$1;
.super Ljava/lang/Object;
.source "RxViewPager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager;->currentItem(Landroid/support/v4/view/ViewPager;)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager$1;->val$view:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager$1;->val$view:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method

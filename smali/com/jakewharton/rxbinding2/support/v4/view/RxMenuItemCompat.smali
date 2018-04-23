.class public final Lcom/jakewharton/rxbinding2/support/v4/view/RxMenuItemCompat;
.super Ljava/lang/Object;
.source "RxMenuItemCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static actionViewEvents(Landroid/view/MenuItem;)Lio/reactivex/Observable;
    .locals 2
    .param p0    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/jakewharton/rxbinding2/view/MenuItemActionViewEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "menuItem == null"

    .line 30
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/view/MenuItemActionViewEventObservable;

    sget-object v1, Lcom/jakewharton/rxbinding2/internal/Functions;->PREDICATE_ALWAYS_TRUE:Lio/reactivex/functions/Predicate;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding2/support/v4/view/MenuItemActionViewEventObservable;-><init>(Landroid/view/MenuItem;Lio/reactivex/functions/Predicate;)V

    return-object v0
.end method

.method public static actionViewEvents(Landroid/view/MenuItem;Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/functions/Predicate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Lcom/jakewharton/rxbinding2/view/MenuItemActionViewEvent;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/jakewharton/rxbinding2/view/MenuItemActionViewEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "menuItem == null"

    .line 48
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handled == null"

    .line 49
    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/view/MenuItemActionViewEventObservable;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding2/support/v4/view/MenuItemActionViewEventObservable;-><init>(Landroid/view/MenuItem;Lio/reactivex/functions/Predicate;)V

    return-object v0
.end method

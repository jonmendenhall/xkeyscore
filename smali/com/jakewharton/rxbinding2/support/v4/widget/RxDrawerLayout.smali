.class public final Lcom/jakewharton/rxbinding2/support/v4/widget/RxDrawerLayout;
.super Ljava/lang/Object;
.source "RxDrawerLayout.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static drawerOpen(Landroid/support/v4/widget/DrawerLayout;I)Lcom/jakewharton/rxbinding2/InitialValueObservable;
    .locals 1
    .param p0    # Landroid/support/v4/widget/DrawerLayout;
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
            "Landroid/support/v4/widget/DrawerLayout;",
            "I)",
            "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 22
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    return-object v0
.end method

.method public static open(Landroid/support/v4/widget/DrawerLayout;I)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/support/v4/widget/DrawerLayout;
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
            "Landroid/support/v4/widget/DrawerLayout;",
            "I)",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 34
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/RxDrawerLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding2/support/v4/widget/RxDrawerLayout$1;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    return-object v0
.end method

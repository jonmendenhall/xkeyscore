.class public abstract Lcom/jakewharton/rxbinding2/widget/AdapterViewItemLongClickEvent;
.super Ljava/lang/Object;
.source "AdapterViewItemLongClickEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding2/widget/AdapterViewItemLongClickEvent;
    .locals 7
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
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
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)",
            "Lcom/jakewharton/rxbinding2/widget/AdapterViewItemLongClickEvent;"
        }
    .end annotation

    .line 14
    new-instance v6, Lcom/jakewharton/rxbinding2/widget/AutoValue_AdapterViewItemLongClickEvent;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding2/widget/AutoValue_AdapterViewItemLongClickEvent;-><init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-object v6
.end method


# virtual methods
.method public abstract clickedView()Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract id()J
.end method

.method public abstract position()I
.end method

.method public abstract view()Landroid/widget/AdapterView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end method
.class public abstract Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;
.super Lcom/jakewharton/rxbinding2/widget/SeekBarChangeEvent;
.source "SeekBarProgressChangeEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeEvent;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent;
    .locals 1
    .param p0    # Landroid/widget/SeekBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 13
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent;-><init>(Landroid/widget/SeekBar;IZ)V

    return-object v0
.end method


# virtual methods
.method public abstract fromUser()Z
.end method

.method public abstract progress()I
.end method

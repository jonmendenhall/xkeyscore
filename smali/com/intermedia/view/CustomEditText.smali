.class public Lcom/intermedia/view/CustomEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/intermedia/view/CustomEditText;->listener:Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 43
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/intermedia/view/CustomEditText;->listener:Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/intermedia/view/CustomEditText;->listener:Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;

    invoke-interface {v0}, Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;->onKeyboardDismissed()V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/intermedia/view/CustomEditText;->listener:Lcom/intermedia/view/CustomEditText$KeyboardDismissedListener;

    return-void
.end method

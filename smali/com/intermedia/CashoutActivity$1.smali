.class Lcom/intermedia/CashoutActivity$1;
.super Ljava/lang/Object;
.source "CashoutActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/CashoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/CashoutActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/CashoutActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$200(Lcom/intermedia/CashoutActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$000(Lcom/intermedia/CashoutActivity;)Lcom/intermedia/model/config/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$100(Lcom/intermedia/CashoutActivity;)V

    .line 73
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/util/UIUtils;->showInactiveAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$000(Lcom/intermedia/CashoutActivity;)Lcom/intermedia/model/config/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->active()Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/util/UIUtils;->showInactiveAlert(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/intermedia/CashoutActivity$1;->this$0:Lcom/intermedia/CashoutActivity;

    invoke-static {p1}, Lcom/intermedia/CashoutActivity;->access$200(Lcom/intermedia/CashoutActivity;)V

    return-void
.end method

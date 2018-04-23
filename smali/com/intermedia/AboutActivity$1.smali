.class Lcom/intermedia/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Lcom/intermedia/service/ApiUtils$APIResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/AboutActivity;->submitTriviaResults(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/AboutActivity;

.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$error_str:Ljava/lang/String;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/AboutActivity;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/intermedia/AboutActivity$1;->this$0:Lcom/intermedia/AboutActivity;

    iput-object p2, p0, Lcom/intermedia/AboutActivity$1;->val$str:Ljava/lang/String;

    iput-object p3, p0, Lcom/intermedia/AboutActivity$1;->val$act:Landroid/app/Activity;

    iput-object p4, p0, Lcom/intermedia/AboutActivity$1;->val$error_str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "AboutActivity"

    .line 274
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/intermedia/AboutActivity$1;->val$error_str:Ljava/lang/String;

    iget-object v0, p0, Lcom/intermedia/AboutActivity$1;->this$0:Lcom/intermedia/AboutActivity;

    invoke-static {v0}, Lcom/intermedia/AboutActivity;->access$000(Lcom/intermedia/AboutActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 2

    .line 268
    invoke-static {}, Lcom/intermedia/service/MetricsUtils;->onSubmitTriviaMetric()V

    const-string p1, "AboutActivity"

    .line 269
    iget-object v0, p0, Lcom/intermedia/AboutActivity$1;->val$str:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/AboutActivity$1;->val$act:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 265
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/intermedia/AboutActivity$1;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method

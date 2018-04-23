.class final synthetic Lcom/intermedia/util/reporting/EmailBugReporter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/Activity;

.field private final arg$2:Landroid/content/Intent;

.field private final arg$3:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/util/reporting/EmailBugReporter$$Lambda$1;->arg$1:Landroid/app/Activity;

    iput-object p2, p0, Lcom/intermedia/util/reporting/EmailBugReporter$$Lambda$1;->arg$2:Landroid/content/Intent;

    iput p3, p0, Lcom/intermedia/util/reporting/EmailBugReporter$$Lambda$1;->arg$3:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/intermedia/util/reporting/EmailBugReporter$$Lambda$1;->arg$1:Landroid/app/Activity;

    iget-object v1, p0, Lcom/intermedia/util/reporting/EmailBugReporter$$Lambda$1;->arg$2:Landroid/content/Intent;

    iget v2, p0, Lcom/intermedia/util/reporting/EmailBugReporter$$Lambda$1;->arg$3:I

    invoke-static {v0, v1, v2}, Lcom/intermedia/util/reporting/EmailBugReporter;->lambda$null$0$EmailBugReporter(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

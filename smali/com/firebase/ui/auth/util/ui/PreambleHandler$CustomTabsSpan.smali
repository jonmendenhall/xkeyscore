.class Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;
.super Landroid/text/style/ClickableSpan;
.source "PreambleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/util/ui/PreambleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTabsSpan"
.end annotation


# instance fields
.field private final mCustomTabsIntent:Landroid/support/customtabs/CustomTabsIntent;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/firebase/ui/auth/util/ui/PreambleHandler;


# direct methods
.method public constructor <init>(Lcom/firebase/ui/auth/util/ui/PreambleHandler;Ljava/lang/String;)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;->this$0:Lcom/firebase/ui/auth/util/ui/PreambleHandler;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;->mUrl:Ljava/lang/String;

    .line 121
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 122
    invoke-static {p1}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->access$000(Lcom/firebase/ui/auth/util/ui/PreambleHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$attr;->colorPrimary:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    iget p1, p2, Landroid/util/TypedValue;->data:I

    .line 125
    new-instance p2, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p2}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 126
    invoke-virtual {p2, p1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;->mCustomTabsIntent:Landroid/support/customtabs/CustomTabsIntent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;->mCustomTabsIntent:Landroid/support/customtabs/CustomTabsIntent;

    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;->this$0:Lcom/firebase/ui/auth/util/ui/PreambleHandler;

    invoke-static {v0}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->access$000(Lcom/firebase/ui/auth/util/ui/PreambleHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.class public final Lcom/intermedia/InternalToolsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "InternalToolsActivity.java"


# static fields
.field public static final EXTRA_TEST_ENVIRONMENT_CHANGED:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getDebugWebsocketUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, ""

    return-object p0
.end method

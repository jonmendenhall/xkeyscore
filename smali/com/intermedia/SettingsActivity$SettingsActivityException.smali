.class Lcom/intermedia/SettingsActivity$SettingsActivityException;
.super Ljava/lang/RuntimeException;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsActivityException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/SettingsActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/intermedia/SettingsActivity$SettingsActivityException;->this$0:Lcom/intermedia/SettingsActivity;

    .line 212
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

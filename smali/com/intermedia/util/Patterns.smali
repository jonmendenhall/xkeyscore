.class public Lcom/intermedia/util/Patterns;
.super Ljava/lang/Object;
.source "Patterns.java"


# static fields
.field public static NUMERIC:Ljava/util/regex/Pattern;

.field public static USERNAME:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Za-z][A-Za-z0-9 ]+[A-Za-z0-9]"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/intermedia/util/Patterns;->USERNAME:Ljava/util/regex/Pattern;

    const-string v0, "[0-9]+"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/intermedia/util/Patterns;->NUMERIC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

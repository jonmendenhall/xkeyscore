.class public final enum Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
.super Ljava/lang/Enum;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/json/JsonUtils$JsonEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

.field public static final enum Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

.field public static final enum Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    const-string v1, "Gson"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    .line 57
    new-instance v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    const-string v1, "Jackson"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->$VALUES:[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    .locals 1

    .line 39
    const-class v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->$VALUES:[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-virtual {v0}, [Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    return-object v0
.end method

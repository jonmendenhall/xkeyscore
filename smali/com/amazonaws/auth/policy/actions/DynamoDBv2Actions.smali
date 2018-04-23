.class public final enum Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;
.super Ljava/lang/Enum;
.source "DynamoDBv2Actions.java"

# interfaces
.implements Lcom/amazonaws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;",
        ">;",
        "Lcom/amazonaws/auth/policy/Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum AllDynamoDBv2Actions:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum BatchGetItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum BatchWriteItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum CreateTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum DeleteItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum DeleteTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum DescribeLimits:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum DescribeTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum GetItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum ListTables:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum PutItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum Query:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum Scan:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum UpdateItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

.field public static final enum UpdateTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 25
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "AllDynamoDBv2Actions"

    const-string v2, "dynamodb:*"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->AllDynamoDBv2Actions:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 28
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "BatchGetItem"

    const-string v2, "dynamodb:BatchGetItem"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->BatchGetItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 31
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "BatchWriteItem"

    const-string v2, "dynamodb:BatchWriteItem"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->BatchWriteItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 34
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "CreateTable"

    const-string v2, "dynamodb:CreateTable"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->CreateTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 37
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "DeleteItem"

    const-string v2, "dynamodb:DeleteItem"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DeleteItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 40
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "DeleteTable"

    const-string v2, "dynamodb:DeleteTable"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DeleteTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 43
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "DescribeLimits"

    const-string v2, "dynamodb:DescribeLimits"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DescribeLimits:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 46
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "DescribeTable"

    const-string v2, "dynamodb:DescribeTable"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DescribeTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 49
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "GetItem"

    const-string v2, "dynamodb:GetItem"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->GetItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 52
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "ListTables"

    const-string v2, "dynamodb:ListTables"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->ListTables:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 55
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "PutItem"

    const-string v2, "dynamodb:PutItem"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->PutItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 58
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "Query"

    const-string v2, "dynamodb:Query"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->Query:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 61
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "Scan"

    const-string v2, "dynamodb:Scan"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->Scan:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 64
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "UpdateItem"

    const-string v2, "dynamodb:UpdateItem"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->UpdateItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    .line 67
    new-instance v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const-string v1, "UpdateTable"

    const-string v2, "dynamodb:UpdateTable"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->UpdateTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const/16 v0, 0xf

    .line 23
    new-array v0, v0, [Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->AllDynamoDBv2Actions:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->BatchGetItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->BatchWriteItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->CreateTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DeleteItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DeleteTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DescribeLimits:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->DescribeTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->GetItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->ListTables:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->PutItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->Query:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v14

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->Scan:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->UpdateItem:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->UpdateTable:Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    aput-object v1, v0, v15

    sput-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;
    .locals 1

    .line 23
    const-class v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazonaws/auth/policy/actions/DynamoDBv2Actions;->action:Ljava/lang/String;

    return-object v0
.end method
